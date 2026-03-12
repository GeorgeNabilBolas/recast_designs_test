class SocialAuthOption {
  final SocialAuthOptionId id;
  final String providerName;
  final String iconPath;
  final String label;

  const SocialAuthOption({
    required this.id,
    required this.providerName,
    required this.iconPath,
    required this.label,
  });
}

enum SocialAuthOptionId { google, apple }
