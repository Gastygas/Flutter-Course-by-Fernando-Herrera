import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI controls + tiles')),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine, bike }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.bike;
  bool wantsBreakfast = false;
  bool wantsLunchs = true;
  bool wantsMoney = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Additional controls for you'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),

        ExpansionTile(
          title: const Text('Choose your favourite vehicle'),
          subtitle: const Text('Touch here and choose!'),
          children: [
            RadioGroup(
              groupValue: selectedTransportation,
              onChanged: (Transportation? value) {
                setState(() {
                  selectedTransportation = value ?? Transportation.bike;
                });
              },
              child: const Column(
                children: [
                  RadioListTile(
                    title: Text('Bike'),
                    subtitle: Text('Cycling is life'),
                    value: Transportation.bike,
                  ),

                  RadioListTile(
                    title: Text('Car'),
                    subtitle: Text('Drive our cars'),
                    value: Transportation.car,
                  ),

                  RadioListTile(
                    title: Text('Plane'),
                    subtitle: Text('Fly with the best airline'),
                    value: Transportation.plane,
                  ),

                  RadioListTile(
                    title: Text('Boat'),
                    subtitle: Text('Travel by boat'),
                    value: Transportation.boat,
                  ),

                  RadioListTile(
                    title: Text('Submarine'),
                    subtitle: Text('Travel by submarine'),
                    value: Transportation.submarine,
                  ),
                ],
              ),
            ),
          ],
        ),
      
        CheckboxListTile(
          title: const Text('Do you want breakfast?'),
          value: wantsBreakfast, 
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
            })
        ),
        CheckboxListTile(
          title: const Text('Do you want having lunch?'),
          value: wantsLunchs, 
          onChanged: (value) => setState(() {
            wantsLunchs = !wantsLunchs;
            })
        ),
        CheckboxListTile(
          title: const Text('Do you want earn money?'),
          value: wantsMoney, 
          onChanged: (value) => setState(() {
            wantsMoney = !wantsMoney;
            })
        ),
      ],
    );
  }
}
