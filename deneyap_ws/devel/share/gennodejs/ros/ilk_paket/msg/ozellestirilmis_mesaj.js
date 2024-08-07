// Auto-generated. Do not edit!

// (in-package ilk_paket.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ozellestirilmis_mesaj {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensorGirisAdi = null;
      this.sensorDegeri = null;
      this.durumu = null;
    }
    else {
      if (initObj.hasOwnProperty('sensorGirisAdi')) {
        this.sensorGirisAdi = initObj.sensorGirisAdi
      }
      else {
        this.sensorGirisAdi = '';
      }
      if (initObj.hasOwnProperty('sensorDegeri')) {
        this.sensorDegeri = initObj.sensorDegeri
      }
      else {
        this.sensorDegeri = 0;
      }
      if (initObj.hasOwnProperty('durumu')) {
        this.durumu = initObj.durumu
      }
      else {
        this.durumu = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ozellestirilmis_mesaj
    // Serialize message field [sensorGirisAdi]
    bufferOffset = _serializer.string(obj.sensorGirisAdi, buffer, bufferOffset);
    // Serialize message field [sensorDegeri]
    bufferOffset = _serializer.int32(obj.sensorDegeri, buffer, bufferOffset);
    // Serialize message field [durumu]
    bufferOffset = _serializer.bool(obj.durumu, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ozellestirilmis_mesaj
    let len;
    let data = new ozellestirilmis_mesaj(null);
    // Deserialize message field [sensorGirisAdi]
    data.sensorGirisAdi = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sensorDegeri]
    data.sensorDegeri = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [durumu]
    data.durumu = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.sensorGirisAdi);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ilk_paket/ozellestirilmis_mesaj';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '840aae7739efcc5ed7df9d06667d6e29';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string sensorGirisAdi
    int32 sensorDegeri
    bool durumu
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ozellestirilmis_mesaj(null);
    if (msg.sensorGirisAdi !== undefined) {
      resolved.sensorGirisAdi = msg.sensorGirisAdi;
    }
    else {
      resolved.sensorGirisAdi = ''
    }

    if (msg.sensorDegeri !== undefined) {
      resolved.sensorDegeri = msg.sensorDegeri;
    }
    else {
      resolved.sensorDegeri = 0
    }

    if (msg.durumu !== undefined) {
      resolved.durumu = msg.durumu;
    }
    else {
      resolved.durumu = false
    }

    return resolved;
    }
};

module.exports = ozellestirilmis_mesaj;
