import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/models/weather_locations.dart';

class Singleweather extends StatelessWidget {
  final int index;
  Singleweather(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height / 3.4,
            // left: MediaQuery.of(context).size.width / 4.5,
            child: Container(
              height: MediaQuery.of(context).size.height / 6,
              width: MediaQuery.of(context).size.width / 3,
              child: SvgPicture.asset(
                locationList[index].iconUrl,
                color: Colors.white,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 150),
                        Text(
                          locationList[index].city,
                          style: GoogleFonts.lato(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          locationList[index].dateTime,
                          style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          locationList[index].temperature,
                          style: GoogleFonts.lato(
                              fontSize: 85,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              locationList[index].iconUrl,
                              width: 34,
                              height: 34,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10),
                            Text(
                              locationList[index].weatherType,
                              style: GoogleFonts.lato(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 40),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Wind',
                              style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              locationList[index].wind.toString(),
                              style: GoogleFonts.lato(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Km/h',
                              style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Stack(
                              children: [
                                Container(
                                  height: 5,
                                  width: 50,
                                  color: Colors.white38,
                                ),
                                Container(
                                  height: 5,
                                  width: 5,
                                  color: Colors.greenAccent,
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Rain',
                              style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              locationList[index].rain.toString(),
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                            Text(
                              '%',
                              style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Stack(
                              children: [
                                Container(
                                  height: 5,
                                  width: 50,
                                  color: Colors.white38,
                                ),
                                Container(
                                  height: 5,
                                  width: 5,
                                  color: Colors.greenAccent,
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Humidity',
                              style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              locationList[index].humidity.toString(),
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Colors.white),
                            ),
                            Text(
                              '%',
                              style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Stack(
                              children: [
                                Container(
                                  height: 5,
                                  width: 50,
                                  color: Colors.white38,
                                ),
                                Container(
                                  height: 5,
                                  width: 5,
                                  color: Colors.redAccent,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
