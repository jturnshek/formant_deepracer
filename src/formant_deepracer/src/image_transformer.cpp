#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

int OUTPUT_WIDTH = 320;
int OUTPUT_HEIGHT = 240;

class ImageTransformer
{
  ros::NodeHandle node_;
  image_transport::ImageTransport image_transport_;
  image_transport::Subscriber image_sub_;
  image_transport::Publisher image_pub_;
  cv::Mat resized_image_;

public:

  ImageTransformer() : image_transport_(node_)
  {
    // Subscrive to input video feed and publish output video feed
    image_sub_ = image_transport_.subscribe("/video_mjpeg", 1, &ImageTransformer::image_callback, this);
    image_pub_ = image_transport_.advertise("/front_camera", 1);
  }

  ~ImageTransformer()
  {
  }

  void image_callback(const sensor_msgs::ImageConstPtr& msg)
  {
    cv_bridge::CvImagePtr cv_ptr;
    try {
      cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
    }
    catch (cv_bridge::Exception& e) {
      ROS_ERROR("cv_bridge exception: %s", e.what());

      return;
    }

    // Resize the image
    cv::resize(cv_ptr->image, resized_image_, cv::Size(OUTPUT_WIDTH, OUTPUT_HEIGHT));
    cv_bridge::CvImage resized_image_msg;
    resized_image_msg.encoding = "bgr8";
    resized_image_msg.image = resized_image_;
    sensor_msgs::ImagePtr image_pointer = resized_image_msg.toImageMsg();
    image_pointer->width = OUTPUT_WIDTH;
    image_pointer->height = OUTPUT_HEIGHT;

    // Output modified image
    image_pub_.publish(image_pointer);
  }
};

int main(int argc, char** argv)
{
  ros::init(argc, argv, "image_transformer");
  
  ImageTransformer image_transformer;

  ros::spin();

  return 0;
}