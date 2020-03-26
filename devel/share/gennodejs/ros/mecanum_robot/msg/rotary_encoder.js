// Auto-generated. Do not edit!

// (in-package mecanum_robot.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class rotary_encoder {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rf = null;
      this.rb = null;
      this.lf = null;
      this.lb = null;
    }
    else {
      if (initObj.hasOwnProperty('rf')) {
        this.rf = initObj.rf
      }
      else {
        this.rf = 0;
      }
      if (initObj.hasOwnProperty('rb')) {
        this.rb = initObj.rb
      }
      else {
        this.rb = 0;
      }
      if (initObj.hasOwnProperty('lf')) {
        this.lf = initObj.lf
      }
      else {
        this.lf = 0;
      }
      if (initObj.hasOwnProperty('lb')) {
        this.lb = initObj.lb
      }
      else {
        this.lb = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rotary_encoder
    // Serialize message field [rf]
    bufferOffset = _serializer.int32(obj.rf, buffer, bufferOffset);
    // Serialize message field [rb]
    bufferOffset = _serializer.int32(obj.rb, buffer, bufferOffset);
    // Serialize message field [lf]
    bufferOffset = _serializer.int32(obj.lf, buffer, bufferOffset);
    // Serialize message field [lb]
    bufferOffset = _serializer.int32(obj.lb, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rotary_encoder
    let len;
    let data = new rotary_encoder(null);
    // Deserialize message field [rf]
    data.rf = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rb]
    data.rb = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lf]
    data.lf = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lb]
    data.lb = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mecanum_robot/rotary_encoder';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '74f45829c12e561eeb9d8f0eca726753';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 rf
    int32 rb
    int32 lf
    int32 lb
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rotary_encoder(null);
    if (msg.rf !== undefined) {
      resolved.rf = msg.rf;
    }
    else {
      resolved.rf = 0
    }

    if (msg.rb !== undefined) {
      resolved.rb = msg.rb;
    }
    else {
      resolved.rb = 0
    }

    if (msg.lf !== undefined) {
      resolved.lf = msg.lf;
    }
    else {
      resolved.lf = 0
    }

    if (msg.lb !== undefined) {
      resolved.lb = msg.lb;
    }
    else {
      resolved.lb = 0
    }

    return resolved;
    }
};

module.exports = rotary_encoder;
