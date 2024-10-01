import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:points_counter/cubit/counter_cubit.dart';
import 'package:points_counter/widgets/custom_button.dart';

import '../cubit/counter_state.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[700],
        title: const Center(
          child: Text(
            'pointer',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: BlocProvider(
          create: (context) => CounterCubit(),
          child: BlocConsumer<CounterCubit, CounterState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Column(
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  Row(
                    children: [
                      const Spacer(
                        flex: 1,
                      ),
                      Column(
                        children: [
                          const Text(
                            'Team A',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                            style: const TextStyle(
                                color: Colors.black, fontSize: 100),
                          ),
                          CustomButton(
                            pointNum: 'Add 1',
                            ontap: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrementPoints(team: 'A', numPoints: 1);
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          CustomButton(
                            pointNum: 'Add 2',
                            ontap: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrementPoints(team: 'A', numPoints: 2);
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          CustomButton(
                            pointNum: 'Add 3',
                            ontap: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrementPoints(team: 'A', numPoints: 3);
                            },
                          )
                        ],
                      ),
                      VerticalDivider(
                        thickness: 4,
                        color: Colors.grey,
                        indent: 100,
                        endIndent: 100,
                      ),
                      const Spacer(
                        flex: 3,
                      ),
                      Column(
                        children: [
                          const Text(
                            'Team B',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                            style: const TextStyle(
                                color: Colors.black, fontSize: 100),
                          ),
                          CustomButton(
                            pointNum: 'Add1',
                            ontap: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrementPoints(team: 'B', numPoints: 1);
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          CustomButton(
                            pointNum: 'Add 2',
                            ontap: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrementPoints(team: 'B', numPoints: 2);
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          CustomButton(
                            pointNum: 'Add 3',
                            ontap: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrementPoints(team: 'B', numPoints: 3);
                            },
                          ),
                        ],
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  CustomButton(
                      ontap: () {
                        BlocProvider.of<CounterCubit>(context).resetPoints();
                        setState(() {});
                      },
                      pointNum: 'reset'),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
