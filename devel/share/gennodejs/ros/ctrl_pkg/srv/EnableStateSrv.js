// Auto-generated. Do not edit!

// (in-package ctrl_pkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class EnableStateSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isActive = null;
    }
    else {
      if (initObj.hasOwnProperty('isActive')) {
        this.isActive = initObj.isActive
      }
      else {
        this.isActive = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EnableStateSrvRequest
    // Serialize message field [isActive]
    bufferOffset = _serializer.bool(obj.isActive, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EnableStateSrvRequest
    let len;
    let data = new EnableStateSrvRequest(null);
    // Deserialize message field [isActive]
    data.isActive = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ctrl_pkg/EnableStateSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '74c71bbe95320ceee0e02ceb6900a4a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool isActive
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EnableStateSrvRequest(null);
    if (msg.isActive !== undefined) {
      resolved.isActive = msg.isActive;
    }
    else {
      resolved.isActive = false
    }

    return resolved;
    }
};

class EnableStateSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.error = null;
    }
    else {
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EnableStateSrvResponse
    // Serialize message field [error]
    bufferOffset = _serializer.int32(obj.error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EnableStateSrvResponse
    let len;
    let data = new EnableStateSrvResponse(null);
    // Deserialize message field [error]
    data.error = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ctrl_pkg/EnableStateSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd9e7447d5716e291370d8c7c21840938';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 error
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EnableStateSrvResponse(null);
    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: EnableStateSrvRequest,
  Response: EnableStateSrvResponse,
  md5sum() { return '232cd2b9458497f0f728a51b5639d139'; },
  datatype() { return 'ctrl_pkg/EnableStateSrv'; }
};
