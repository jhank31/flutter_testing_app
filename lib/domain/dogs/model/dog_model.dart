class DogModel {
    String? message;
    String? status;

    DogModel({
        this.message,
        this.status,
    });

    factory DogModel.fromJson(Map<String, dynamic> json) => DogModel(
        message: json["message"] ?? "",
        status: json["status"] ?? "",
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "status": status,
    };
}
