import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container 1: Search Bar
            Container(
              height: 200,
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('top.jpg'), // Use a local asset image
                  fit: BoxFit.cover, // Covers the entire container
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        // Allow search bar to take available space
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.search, color: Colors.black),
                              const SizedBox(width: 10),
                              Text(
                                'Pay anyone on UPI',
                                style: TextStyle(
                                    color: Colors.grey[800],
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('pro.png'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Container 2: Grid of Icons
            Container(
              padding: const EdgeInsets.all(15),
              color: Colors.white,
              child: Column(
                children: [
                  GridView.count(
                    crossAxisCount: 4,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    childAspectRatio: 1,
                    shrinkWrap: true,
                    // Ensures GridView does not take infinite height
                    physics: const NeverScrollableScrollPhysics(),
                    // Disable GridView scrolling
                    children: const [
                      IconTextWidget(
                          icon: Icons.qr_code_scanner,
                          text: 'Scan any QR code'),
                      IconTextWidget(
                          icon: Icons.contact_page, text: 'Pay contact'),
                      IconTextWidget(
                          icon: Icons.send_to_mobile, text: 'Pay phone number'),
                      IconTextWidget(
                          icon: Icons.account_balance, text: 'Bank transfer'),
                      IconTextWidget(
                          icon: Icons.numbers, text: 'Pay UPI ID or number '),
                      IconTextWidget(
                          icon: Icons.account_box_outlined,
                          text: 'Self transfer'),
                      IconTextWidget(
                          icon: Icons.receipt_long_rounded, text: 'Pay bills'),
                      IconTextWidget(
                          icon: Icons.charging_station_outlined,
                          text: 'Mobile recharge'),
                    ],
                  ),
                  const SizedBox(height: 1), // Space between grid and buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // Space between buttons
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.black), // Border color
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min, // Wrap content
                          children: [
                            Text(
                              "Activate UPI Lite",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5), // Space between text and icon
                            Icon(Icons.add_circle_outline,
                                color: Colors.black, size: 18),
                          ],
                        ),
                      ),
                      // Second box
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue[50], // Border color
                        ),
                        child: Row(
                          children: [
                            Text(
                              "UPI ID:andgshbnhs",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 5), // Space between text and icon
                            Icon(Icons.copy_all_rounded,
                                color: Colors.black, size: 18),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            // Container 3: Additional Content
            Container(
              height: 1350,
              width: double.infinity,
              color: Colors.white70,
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // Aligns text to the left
                children: [
                  Text(
                    'People',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Adds spacing between text and grid

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Wrap(
                          alignment: WrapAlignment.spaceEvenly,
                          spacing: 10,
                          runSpacing: 10,
                          children: peoples
                              .map((people) => Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CircleAvatar(
                                        radius: 25,
                                        backgroundImage:
                                            AssetImage(people["image"]!),
                                      ),
                                      SizedBox(height: 5),
                                      Text(people["name"]!,
                                          style:
                                              TextStyle(color: Colors.black)),
                                    ],
                                  ))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Businesses',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Wrap(
                          alignment: WrapAlignment.spaceEvenly,
                          spacing: 10,
                          runSpacing: 10,
                          children: businesses
                              .map((business) => Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CircleAvatar(
                                        radius: 25,
                                        backgroundImage:
                                            AssetImage(business["image"]!),
                                      ),
                                      SizedBox(height: 5),
                                      Text(business["name"]!,
                                          style:
                                              TextStyle(color: Colors.black)),
                                    ],
                                  ))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    // Fixes the left spacing issue
                    title: Text(
                      'Bills & recharges',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Pay bills, recharge mobiles & more",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Wrap(
                              alignment: WrapAlignment.spaceEvenly,
                              spacing: 10, // Horizontal spacing
                              runSpacing: 10, // Vertical spacing
                              children: const [
                                CircleIconText(
                                    icon: Icons.charging_station_outlined,
                                    text: 'Mobile recharge'),
                                CircleIconText(
                                    icon: Icons.tv, text: 'DTH/ Cable TV'),
                                CircleIconText(
                                    icon: Icons.lightbulb_outlined,
                                    text: 'Electricity'),
                                CircleIconText(
                                    icon: Icons.directions_car_filled,
                                    text: 'FASTag recharge'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          side: BorderSide(color: Colors.black),
                          foregroundColor: Color(0xFF0516A5), // Text color
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8), // Padding
                        ),
                        child: Text("View More"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Offers & rewards',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  // Adds spacing between text and grid
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Wrap(
                          alignment: WrapAlignment.spaceEvenly,
                          spacing: 10,
                          runSpacing: 10,
                          children: users
                              .map((user) => Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CircleAvatar(
                                        radius: 25,
                                        backgroundImage:
                                            AssetImage(user["image"]!),
                                      ),
                                      SizedBox(height: 5),
                                      Text(user["name"]!,
                                          style:
                                              TextStyle(color: Colors.black)),
                                    ],
                                  ))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Manage your money',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  // Adds spacing between text and grid
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // Distribute items evenly
                        children: [
                          Expanded(
                            child: Wrap(
                              alignment: WrapAlignment.spaceEvenly,
                              // Ensures spacing between cards
                              spacing: 10,
                              // Horizontal spacing
                              runSpacing: 10,
                              // Vertical spacing
                              children: [
                                MoneyCard(
                                  icon: Icons.receipt_long_outlined,
                                  title: 'Personal Loan',
                                  subtitle: 'Instant approval',
                                  subSubtitle: ' Apply now',
                                ),
                                MoneyCard(
                                  icon: Icons.credit_card,
                                  title: 'Credit Card',
                                  subtitle: 'Get up to 2x limit',
                                  subSubtitle: 'Apply now',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.speed,
                                color: Color(0xFF0516A5),
                                size: 24), // Leading icon
                            title: Text(
                              'Check your CIBIL score for free',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: Icon(Icons.arrow_forward_ios,
                                color: Colors.black, size: 20), // Trailing icon
                          ),
                          ListTile(
                            leading: Icon(Icons.history,
                                color: Color(0xFF0516A5), size: 24),
                            // Leading icon
                            title: Text(
                              'See transaction history',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: Icon(Icons.arrow_forward_ios,
                                color: Colors.black, size: 20), // Trailing icon
                          ),
                          ListTile(
                            leading: Icon(Icons.account_balance_outlined,
                                color: Color(0xFF0516A5), size: 24),
                            // Leading icon
                            title: Text(
                              'Check bank balance',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: Icon(Icons.arrow_forward_ios,
                                color: Colors.black, size: 20), // Trailing icon
                          ),
                        ],
                      ),
                    ],
                  ),
                  Image.asset(
                    'bottom.jpg', // Your image path
                    width: double.infinity, // Full width
                    fit: BoxFit
                        .cover, // Ensures the image covers the entire width
                  )
                ], //children close
              ),
            ), //container3 close
          ], //container-children closeTag
        ),
      ),
    );
  }
}

final List<Map<String, String>> users = [
  {"name": "Rewards", "image": "reward.png"},
  {"name": "Offers", "image": "offer.png"},
  {"name": "Referrals", "image": "referral.png"},
  {"name": "Tez Shots", "image": "tez.png"},
];

final List<Map<String, String>> businesses = [
  {"name": "Vi prepaid", "image": "vi.png"},
  {"name": "TATA sky", "image": "tatasky.png"},
  {"name": "Airtel prepaid", "image": "airtel.png"},
  {"name": "More", "image": "more.png"},
];

final List<Map<String, String>> peoples = [
  {"name": "Richard", "image": "pro1.png"},
  {"name": "Pearl", "image": "pro2.png"},
  {"name": "Tom", "image": "pro3.png"},
  {"name": "Max", "image": "pro4.png"},
];

// Custom Widget for Icon and Text
class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconTextWidget({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 30, color: Color(0xFF0516A5)),
        const SizedBox(height: 5),
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 14, color: Colors.black),
        ),
      ],
    );
  }
}

class MoneyCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String subSubtitle;

  const MoneyCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.subSubtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, // Adjust based on screen size
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 30, color: Color(0xFF0516A5)),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 4),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (subSubtitle.isNotEmpty) ...[
            SizedBox(height: 4),
            Text(
              subSubtitle,
              style: TextStyle(color: Colors.blue, fontSize: 12),
            ),
          ],
        ],
      ),
    );
  }
}

class CircleIconText extends StatelessWidget {
  final IconData icon;
  final String text;

  const CircleIconText({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 25,
          // Adjust size as needed
          backgroundColor: Colors.blue.shade100,
          // Background color for the avatar
          child: Icon(icon,
              color: Color(0xFF0516A5), size: 28), // Icon inside the avatar
        ),
        const SizedBox(height: 5), // Spacing between icon and text
        Text(text, style: const TextStyle(color: Colors.black, fontSize: 12)),
      ],
    );
  }
}
