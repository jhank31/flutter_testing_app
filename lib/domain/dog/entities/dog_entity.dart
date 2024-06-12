import 'package:equatable/equatable.dart';

class DogEntity extends Equatable{
    final String message;
    final String status;

    const DogEntity({
        required this.message,
        required this.status,
    });
    
      @override
      List<Object?> get props => [message, status];

}
