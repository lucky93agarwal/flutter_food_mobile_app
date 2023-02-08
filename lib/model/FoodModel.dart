class CategoryDataModel {
  static final categoryitems = [
    FoodModelItem(
        id: 1,
        title: 'Foods',
        subtitle: '₹ 900/-',
        date: 'Veggie \ntomato mix',
        status: 'assets/images/icons/happyiconfood.png',
        isNew: true,
        image:
        'assets/images/icons/happyiconfood.png',
        by: 'Lucky Agarwal'),

    FoodModelItem(
        id: 2,
        title: 'Drinks',
        subtitle: '₹ 300/-',
        date: 'Punjabi Thali',
        status: 'assets/images/icons/brainiconfood.png',
        isNew: true,
        image:
        'assets/images/icons/brainiconfood.png',
        by: 'Lucky Agarwal'),

    FoodModelItem(
        id: 3,
        title: 'Snacks',
        subtitle: '₹ 450/-',
        date: 'Rajasthani Thali',
        status: 'assets/images/icons/chaticonfood.png',
        isNew: true,
        image:
        'assets/images/icons/chaticonfood.png',
        by: 'Lucky Agarwal'),

    FoodModelItem(
        id: 4,
        title: 'Gossip with Friends',
        subtitle: 'Rs 900',
        date: 'Veggie tomato mix',
        status: 'assets/images/icons/chaticonfood.png',
        isNew: true,
        image:
        'assets/images/icons/chaticonfood.png',
        by: 'Lucky Agarwal'),


  ];
}

class FoodModelItem {
  final int id;
  final String title;
  final String subtitle;
  final String date;
  final String status;
  final bool isNew;
  final String image;
  final String by;

  FoodModelItem({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.date,
    required this.status,
    required this.isNew,
    required this.image,
    required this.by,
  });
}
