class WelcomeCarousel {
  String title;
  String description;
  String imageAsset;

  WelcomeCarousel({
    required this.title,
    required this.description,
    required this.imageAsset,
  });
}

var welcomeCarouselList = [
  WelcomeCarousel(
    title: 'Selamat datang di Gojek!',
    description:
    'Aplikasi yang bikin hidup kamu lebih nyaman. Siap bantuin semua kebutuhanmu, kapan pun, dan di mana pun.',
    imageAsset: 'images/welcome_image.png',
  ),
  WelcomeCarousel(
    title: 'Transportasi & logistik',
    description:
    'Anterin kamu jalan atau ambilin barang lebih gampang tinggal ngeklik doang~',
    imageAsset: 'images/welcome_image.png',
  ),
  WelcomeCarousel(
    title: 'Pesan makan & belanja',
    description:
    'Lagi ngidam sesuatu? Gojek beliin gak pake lama.',
    imageAsset: 'images/welcome_image.png',
  ),
];