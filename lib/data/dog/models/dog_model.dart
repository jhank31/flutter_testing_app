import 'package:app_flutter_testing/domain/dog/entities/dog_entity.dart';

class DogModel extends DogEntity {
  const DogModel({
    required super.message,
    required super.status,
  });

  factory DogModel.fromJson(Map<String, dynamic> json) => DogModel(
        message: json['message'],
        status: json['status'],
      );

  Map<String, dynamic> toJson() => {
        'message': message,
        'status': status,
      };

  DogEntity toEntity() => DogEntity(
        message: message,
        status: status,
      );
    
  factory DogModel.fromEntity(DogEntity entity) => DogModel(
        message: entity.message,
        status: entity.status,
      );
}
