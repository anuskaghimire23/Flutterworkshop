class UpcommingClassModel {
    UpcommingClassModel({
        required this.sucess,
        required this.data,
    });

    final bool? sucess;
    final List<Datum> data;

    factory UpcommingClassModel.fromJson(Map<String, dynamic> json){ 
        return UpcommingClassModel(
            sucess: json["sucess"],
            data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        );
    }

}

class Datum {
    Datum({
        required this.startsIn,
        required this.courseImage,
        required this.upcomingId,
        required this.courseId,
        required this.courseName,
        required this.startDate,
        required this.courseDuration,
        required this.classTime,
        required this.availableSeats,
        required this.offerPrice,
        required this.actualPrice,
        required this.discount,
        required this.demoVideoId,
    });

    final String? startsIn;
    final String? courseImage;
    final int? upcomingId;
    final int? courseId;
    final String? courseName;
    final String? startDate;
    final String? courseDuration;
    final String? classTime;
    final String? availableSeats;
    final String? offerPrice;
    final String? actualPrice;
    final String? discount;
    final String? demoVideoId;

    factory Datum.fromJson(Map<String, dynamic> json){ 
        return Datum(
            startsIn: json["Starts in"],
            courseImage: json["course_image"],
            upcomingId: json["upcoming_id"],
            courseId: json["course_id"],
            courseName: json["course_name"],
            startDate: json["start_date"],
            courseDuration: json["course_duration"],
            classTime: json["class_time"],
            availableSeats: json["available_Seats"],
            offerPrice: json["offer_price"],
            actualPrice: json["actual_price"],
            discount: json["discount"],
            demoVideoId: json["demo_video_id"],
        );
    }

}
