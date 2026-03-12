class FoodImage {
  final String id;
  final String imageUrl;
  final String? label;

  const FoodImage({
    required this.id,
    required this.imageUrl,
    this.label,
  });
}
