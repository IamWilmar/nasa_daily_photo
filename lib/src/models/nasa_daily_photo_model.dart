// To parse this JSON data, do
//
//     final nasaDailyPhotoResponse = nasaDailyPhotoResponseFromJson(jsonString);

import 'dart:convert';

NasaDailyPhotoResponse nasaDailyPhotoResponseFromJson(String str) => NasaDailyPhotoResponse.fromJson(json.decode(str));

String nasaDailyPhotoResponseToJson(NasaDailyPhotoResponse data) => json.encode(data.toJson());

class NasaDailyPhotoResponse {
    NasaDailyPhotoResponse({
        this.copyright,
        this.date,
        this.explanation,
        this.hdurl,
        this.mediaType,
        this.serviceVersion,
        this.title,
        this.url,
    });

    String copyright;
    DateTime date;
    String explanation;
    String hdurl;
    String mediaType;
    String serviceVersion;
    String title;
    String url;

    factory NasaDailyPhotoResponse.fromJson(Map<String, dynamic> json) => NasaDailyPhotoResponse(
        copyright: json["copyright"],
        date: DateTime.parse(json["date"]),
        explanation: json["explanation"],
        hdurl: json["hdurl"],
        mediaType: json["media_type"],
        serviceVersion: json["service_version"],
        title: json["title"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "copyright": copyright,
        "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "explanation": explanation,
        "hdurl": hdurl,
        "media_type": mediaType,
        "service_version": serviceVersion,
        "title": title,
        "url": url,
    };
}
