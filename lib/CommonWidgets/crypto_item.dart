
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mon_gay/Styles/colors.dart';
import 'package:mon_gay/Styles/default_page.dart';

Widget cryptoItem({onPress, crypto_picture, }) {
  return Card(
    child: GestureDetector(
      onTap: onPress,
      child: Container(
        child: Row(
          children: [
            SizedBox(width: 15),
            Expanded(
                child: Column(
                  children: [
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://s2.coinmarketcap.com/static/img/coins/64x64/1.png"
                                ),
                                fit: BoxFit.cover,
                              )
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text("Bitcoin", style: MonGayTheme.subTitle(textColor: blackColor),),
                        SizedBox(width: 3,),
                        Text("(BTC)", style: MonGayTheme.simpleText(textColor: blackColor),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Text("\$ 29.982.15", style: MonGayTheme.subTitle(textColor: blackColor),),
                        SizedBox(width: 15,),
                        Text("+1.57%", style: MonGayTheme.simpleText(textColor: succesColor),),
                      ],
                    ),
                    SizedBox(height: 5,),
                  ],
                )
            ),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("0.6415 BTC", style: MonGayTheme.title(textColor: orangeColor, textSize: 15),),
                    Text("≈ \$ 16.756,21", style: MonGayTheme.simpleText(textColor: blackColor.withOpacity(.6), textSize: 13),),
                    Text("≈ 10.002,120 F CFA", style: MonGayTheme.simpleText(textColor: blackColor.withOpacity(.6), textSize: 13),),

                  ],
                )
            ),
            SizedBox(width: 15),

          ],
        ),
      ),
    ),
  );
}

/*
Expanded(
                child: Column(
                  children: [
                    SizedBox(height: 5,),
                    Expanded(child: Center(child: Text('STAT'),)),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Text("\$ 29.982.15", style: MonGayTheme.subTitle(textColor: blackColor),),
                        SizedBox(width: 15,),
                        Text("+1.57%", style: MonGayTheme.simpleText(textColor: succesColor),),
                      ],
                    ),
                    SizedBox(height: 5,),
                  ],
                )
            ),
 */

LineChartData mainData() {
  return LineChartData(
    gridData: FlGridData(
      show: true,
      drawVerticalLine: true,
      horizontalInterval: 1,
      verticalInterval: 1,
      getDrawingHorizontalLine: (value) {
        return const FlLine(
          color: blackColor,
          strokeWidth: 1,
        );
      },
      getDrawingVerticalLine: (value) {
        return const FlLine(
          color: secondaryColor,
          strokeWidth: 1,
        );
      },
    ),
    titlesData: const FlTitlesData(
      show: true,
      rightTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      topTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 30,
          interval: 1,
          //getTitlesWidget: bottomTitleWidgets,
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          interval: 1,
          //getTitlesWidget: leftTitleWidgets,
          reservedSize: 42,
        ),
      ),
    ),
    borderData: FlBorderData(
      show: true,
      border: Border.all(color: const Color(0xff37434d)),
    ),
    minX: 0,
    maxX: 11,
    minY: 0,
    maxY: 6,
    lineBarsData: [
      LineChartBarData(
        spots: const [
          FlSpot(0, 3),
          FlSpot(2.6, 2),
          FlSpot(4.9, 5),
          FlSpot(6.8, 3.1),
          FlSpot(8, 4),
          FlSpot(9.5, 3),
          FlSpot(11, 4),
        ],
        isCurved: true,
        gradient: LinearGradient(
          colors: staticSuccessColorArray,
        ),
        barWidth: 5,
        isStrokeCapRound: true,
        dotData: const FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(
          show: true,
          gradient: LinearGradient(
            colors: staticSuccessColorArray
                .map((color) => color.withOpacity(0.3))
                .toList(),
          ),
        ),
      ),
    ],
  );
}