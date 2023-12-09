class OnboardingContent {
  String image;
  String title;
  String description;
  OnboardingContent({required this.image, required this.title, required this.description});
}

List<OnboardingContent> contents = [
  OnboardingContent(
    title: "Welcome To\nSuperMind",
    image: 'assets/images/onb1.png',
    description: ""
  ),
  OnboardingContent(
    title: "Let's start journey\n with SuperMind",
    image: 'assets/images/onb2.png',
    description: "You can explore this journey with your favorite person "
  ),
  OnboardingContent(
    title: "Did you forget me !",
    image: 'assets/images/onb3.png',
    description: "Let’s Remember Everything Together"
  ),
];