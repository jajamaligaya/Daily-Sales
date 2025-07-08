import 'package:flutter/material.dart';

class Homes extends StatefulWidget {
  const Homes({super.key});

  @override
  State<Homes> createState() => _Homes();
}

class _Homes extends State<Homes> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map? ?? {};
    print(data);

    // Safely split the full time string
    String fullTime = data['time'] ?? '';
    String displayDate = '';
    String displayTime = '';

    if (fullTime.contains(' - ')) {
      List<String> parts = fullTime.split(' - ');
      displayDate = parts[0]; // Monday, July 7, 2025
      displayTime = parts[1]; // 11:00 PM
    } else {
      displayTime = fullTime;
    }

    // Choose background image (ADD)
    bool isDay = data['isDaytime'] == true || data['isDaytime'] == 'true';
    String bgImage = isDay ? 'assets/day.jpg' : 'assets/night.jpg';

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(bgImage),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: () async {
                    dynamic result = await Navigator.pushNamed(context, '/location');
                    setState(() {
                      data = {
                        'time': result['time'],
                        'location': result['location'],
                        'flag': result['flag'],
                        'isDaytime': result['isDaytime'],
                      };
                    });
                  },
                  icon: const Icon(Icons.edit_location, color: Colors.black87),
                  label: const Text(
                    'Edit Location',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '${data['location'] ?? 'Location'}',
                  style: const TextStyle(
                    fontSize: 35,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  displayTime,
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                // const SizedBox(height:
                // Text(
                //   displayDate,
                //   style: const TextStyle(
                //     fontSize: 16,
                //     color: Colors.black54,
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
