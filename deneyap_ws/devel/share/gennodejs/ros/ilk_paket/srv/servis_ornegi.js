// Auto-generated. Do not edit!

// (in-package ilk_paket.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class servis_ornegiRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.islem = null;
      this.a = null;
      this.b = null;
    }
    else {
      if (initObj.hasOwnProperty('islem')) {
        this.islem = initObj.islem
      }
      else {
        this.islem = 0;
      }
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0.0;
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type servis_ornegiRequest
    // Serialize message field [islem]
    bufferOffset = _serializer.char(obj.islem, buffer, bufferOffset);
    // Serialize message field [a]
    bufferOffset = _serializer.float64(obj.a, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = _serializer.float64(obj.b, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type servis_ornegiRequest
    let len;
    let data = new servis_ornegiRequest(null);
    // Deserialize message field [islem]
    data.islem = _deserializer.char(buffer, bufferOffset);
    // Deserialize message field [a]
    data.a = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ilk_paket/servis_ornegiRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8edca533d0b6d1ade3d3de2c528a90bb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    char islem
    float64 a
    float64 b
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new servis_ornegiRequest(null);
    if (msg.islem !== undefined) {
      resolved.islem = msg.islem;
    }
    else {
      resolved.islem = 0
    }

    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0.0
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = 0.0
    }

    return resolved;
    }
};

class servis_ornegiResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sonuc = null;
    }
    else {
      if (initObj.hasOwnProperty('sonuc')) {
        this.sonuc = initObj.sonuc
      }
      else {
        this.sonuc = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type servis_ornegiResponse
    // Serialize message field [sonuc]
    bufferOffset = _serializer.float64(obj.sonuc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type servis_ornegiResponse
    let len;
    let data = new servis_ornegiResponse(null);
    // Deserialize message field [sonuc]
    data.sonuc = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ilk_paket/servis_ornegiResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ebbb55f2cf979260315e5400cca901b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 sonuc
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new servis_ornegiResponse(null);
    if (msg.sonuc !== undefined) {
      resolved.sonuc = msg.sonuc;
    }
    else {
      resolved.sonuc = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: servis_ornegiRequest,
  Response: servis_ornegiResponse,
  md5sum() { return '23062d1c9d00067c401ffbc6d629d9b9'; },
  datatype() { return 'ilk_paket/servis_ornegi'; }
};
