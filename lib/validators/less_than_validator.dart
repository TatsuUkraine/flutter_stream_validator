import 'field_validator.dart';

/// Check if field value less than a provided value
class LessThanValidator<I extends num> extends FieldValidator<I> {
  final I max;

  const LessThanValidator(
    this.max, {
    String? fieldName,
    String? errorMessage,
  }) : super(
          fieldName: fieldName,
          message: errorMessage ?? 'should be less than $max',
        );

  const LessThanValidator.withMessage(this.max, String message)
      : super.withMessage(
          message: message,
        );

  @override
  bool isValid(I? value) => value! < max;
}
