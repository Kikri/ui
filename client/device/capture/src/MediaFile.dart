//Copyright (C) 2012 Potix Corporation. All Rights Reserved.
//History: Mon, May 21, 2012  03:51:44 PM
// Author: henrichen

typedef MediaFileDataSuccessCallback(MediaFileData data);
typedef MediaFileDataErrorCallback();

/** Midea capture file */
interface MediaFile {
	/** file name without path information */
	String name;
	/** file name with full path information */
	String fullPath;
	/** MIME type of this file */
	String type;
	/** The date/time this file was last modified */
	Date date;
	/** The file size in bytes */
	int size;
	
	/** Returns format information of this Media file */
	void getFormatData(MediaFileDataSuccessCallback onSuccess, [MediaFileDataErrorCallback onError]);
}

class MediaFileData {
	/** the actual format of the audio/video contents */
	String codecs;
	/** The average bitrate of the content; image is always 0 */
	double bitrate;
	/** The height of the image/video in pixels; for sound clip always 0 */
	int height;
	/** the width of the image/video in pixels; for sound clip always 0 */
	int width;
	/** The length of audio/video clip in seconds; image is always 0 */
	int duration;
	
	MediaFileData(this.codecs, this.bitrate, this.height, this.width, this.duration);
	
	MediaFileData.from(Map data) : this.codecs = data["codecs"], this.bitrate = data["bitrate"],
	    this.height = data["height"], this.width = data["width"], this.duration = data["duration"];
}
