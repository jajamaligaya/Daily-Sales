import 'package:daily_sales_project/worldtime/services/world_time.dart';
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(location: 'London', url: 'Europe/London', flag: '🇬🇧'),
    WorldTime(location: 'Berlin', url: 'Europe/Berlin', flag: '🇩🇪'),
    WorldTime(location: 'Cairo', url: 'Africa/Cairo', flag: '🇪🇬'),
    WorldTime(location: 'Nairobi', url: 'Africa/Nairobi', flag: '🇰🇪'),
    WorldTime(location: 'Chicago', url: 'America/Chicago', flag: '🇺🇸'),
    WorldTime(location: 'New York', url: 'America/New_York', flag: '🇺🇸'),
    WorldTime(location: 'Toronto', url: 'America/Toronto', flag: '🇨🇦'),
    WorldTime(location: 'Buenos Aires', url: 'America/Argentina/Buenos_Aires', flag: '🇦🇷'),
    WorldTime(location: 'Rio de Janeiro', url: 'America/Sao_Paulo', flag: '🇧🇷'),
    WorldTime(location: 'Seoul', url: 'Asia/Seoul', flag: '🇰🇷'),
    WorldTime(location: 'Tokyo', url: 'Asia/Tokyo', flag: '🇯🇵'),
    WorldTime(location: 'Jakarta', url: 'Asia/Jakarta', flag: '🇮🇩'),
    WorldTime(location: 'Bangkok', url: 'Asia/Bangkok', flag: '🇹🇭'),
    WorldTime(location: 'Manila', url: 'Asia/Manila', flag: '🇵🇭'),
    WorldTime(location: 'Sydney', url: 'Australia/Sydney', flag: '🇦🇺'),
    WorldTime(location: 'Auckland', url: 'Pacific/Auckland', flag: '🇳🇿'),
    WorldTime(location: 'Dubai', url: 'Asia/Dubai', flag: '🇦🇪'),
    WorldTime(location: 'Moscow', url: 'Europe/Moscow', flag: '🇷🇺'),
    WorldTime(location: 'Paris', url: 'Europe/Paris', flag: '🇫🇷'),
    WorldTime(location: 'Rome', url: 'Europe/Rome', flag: '🇮🇹'),
  ];


  void updateTime (index) async {
  WorldTime instance = locations[index];
  await instance.getTime();

  if (!mounted) return;
  //navigate to homescreen
  Navigator.pop(context, {
    'location': instance.location,
    'time': instance.time,
    'flag': instance.flag,
    'isDaytime': instance.isDaytime,
  });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {

                updateTime(index);
              },
              title: Text(locations[index].location),
              subtitle: Text(locations[index].url),
            ),
          );
        },
      ),
    );
  }
}
