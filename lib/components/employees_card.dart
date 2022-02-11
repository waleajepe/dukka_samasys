import 'package:flutter/material.dart';
import 'package:samasys/resources/resources.dart';
import 'package:samasys/components/components.dart';

class EmployeesCard extends StatefulWidget {
  final String name;
  final String position;
  final String email;
  final String phone;
  final String imageUrl;


  const EmployeesCard({
    Key? key,
    required this.position,
    required this.name,
    required this.email,
    required this.phone,
    required this.imageUrl,

  }) : super(key: key);

  @override
  State<EmployeesCard> createState() => _EmployeesCardState();
}

class _EmployeesCardState extends State<EmployeesCard> {
  /* a boolean isCliked to detect
  if an employee card is pressed to show more options (delete and edit) */
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 22.0),
      width: double.infinity,
      height: 140.0,
      decoration: BoxDecoration(
          border: Border.all(
              color: Palette.lighterBlack)),
      child: Row(
        children: [
          Container(
            width:
            MediaQuery.of(context).size.width *
                0.35,
            height: 140,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    widget.imageUrl,
                  )),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 16.0, vertical: 2.0),
            ),
          ),
          SizedBox(width: 18.0),
          Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.0),
              Text(
                widget.name,
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                    color: Palette.lightBlack),
              ),
              SizedBox(height: 10.0),
              CardSubtitle(
                  text: widget.position),
              SizedBox(height: 6.0),
              CardSubtitle(
                  text:
                  widget.phone),
              SizedBox(height: 6.0),
              CardSubtitle(
                  text: widget.email)
            ],
          )
        ],
      ),
    );
  }
}

//
// If not isPressed, returns a Container with no Stack Widgets
//          Container(
//             margin: EdgeInsets.only(bottom: 22.0),
//             width: double.infinity,
//             height: 140.0,
//             decoration: BoxDecoration(
//                 border: Border.all(color: Palette.lighterBlack)),
//             child: Row(
//               children: [
//                 Container(
//                   width: MediaQuery.of(context).size.width * 0.35,
//                   height: 140,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                         fit: BoxFit.cover,
//                         image: AssetImage(
//                           widget.imageUrl,
//                         )),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 16.0, vertical: 2.0),
//                   ),
//                 ),
//                 SizedBox(width: 18.0),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(height: 10.0),
//                     Text(
//                       widget.name,
//                       style: TextStyle(
//                           fontSize: 22.0,
//                           fontWeight: FontWeight.w600,
//                           color: Palette.lightBlack),
//                     ),
//                     SizedBox(height: 10.0),
//                     CardSubtitle(text: widget.position),
//                     SizedBox(height: 6.0),
//                     CardSubtitle(text: widget.phone),
//                     SizedBox(height: 6.0),
//                     CardSubtitle(text: widget.email)
//                   ],
//                 )
//               ],
//             ),
//           );
//   }
// }
//
//
// import 'package:flutter/material.dart';
// import 'package:samasys/resources/resources.dart';
// import 'package:samasys/components/components.dart';
//
// class EmployeesCard extends StatefulWidget {
//   final String name;
//   final String position;
//   final String email;
//   final String phone;
//   final String imageUrl;
//
//   const EmployeesCard({
//     Key? key,
//     required this.position,
//     required this.name,
//     required this.email,
//     required this.phone,
//     required this.imageUrl,
//   }) : super(key: key);
//
//   @override
//   State<EmployeesCard> createState() => _EmployeesCardState();
// }
//
// class _EmployeesCardState extends State<EmployeesCard> {
//   /* a boolean isCliked to detect
//   if an employee card is pressed to show more options (delete and edit) */
//   bool isPressed = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onLongPress: () {
//         setState(() {
//           isPressed = !isPressed;
//         });
//       },
//       //If isPressed, return a Stack with Edit and Delete Icon
//       child: isPressed
//           ? Stack(children: [
//         Positioned(
//             bottom: 25.0,
//             right: 6.0,
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   width: 30.0,
//                   height: 30.0,
//                   color: Palette.lighterBlack,
//                   child: IconButton(
//                     color: Palette.lightBlack,
//                     icon: Icon(Icons.edit),
//                     iconSize: 20.0,
//                     onPressed: () {
//                       print('delete');
//                     },
//                   ),
//                 ),
//                 SizedBox(width: 10.0),
//                 Container(
//                   width: 30.0,
//                   height: 30.0,
//                   color: Palette.lighterBlack,
//                   child: IconButton(
//                       color: Palette.lightBlack,
//                       icon: Icon(Icons.delete),
//                       iconSize: 20.0,
//                       onPressed: () {
//                         print('delete');
//                       }),
//                 ),
//               ],
//             )),
//         Container(
//           margin: EdgeInsets.only(bottom: 22.0),
//           width: double.infinity,
//           height: 140.0,
//           decoration: BoxDecoration(
//               border: Border.all(color: Palette.lighterBlack)),
//           child: Row(
//             children: [
//               Container(
//                 width: MediaQuery.of(context).size.width * 0.35,
//                 height: 140,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                       fit: BoxFit.cover,
//                       image: AssetImage(
//                         widget.imageUrl,
//                       )),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 16.0, vertical: 2.0),
//                 ),
//               ),
//               SizedBox(width: 18.0),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(height: 10.0),
//                   Text(
//                     widget.name,
//                     style: TextStyle(
//                         fontSize: 22.0,
//                         fontWeight: FontWeight.w600,
//                         color: Palette.lightBlack),
//                   ),
//                   SizedBox(height: 10.0),
//                   CardSubtitle(text: widget.position),
//                   SizedBox(height: 6.0),
//                   CardSubtitle(text: widget.phone),
//                   SizedBox(height: 6.0),
//                   CardSubtitle(text: widget.email)
//                 ],
//               )
//             ],
//           ),
//         ),
//       ])
//       //If not isPressed, returns a Container with no Stack Widgets
//           : Container(
//         margin: EdgeInsets.only(bottom: 22.0),
//         width: double.infinity,
//         height: 140.0,
//         decoration: BoxDecoration(
//             border: Border.all(color: Palette.lighterBlack)),
//         child: Row(
//           children: [
//             Container(
//               width: MediaQuery.of(context).size.width * 0.35,
//               height: 140,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                     fit: BoxFit.cover,
//                     image: AssetImage(
//                       widget.imageUrl,
//                     )),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(
//                     horizontal: 16.0, vertical: 2.0),
//               ),
//             ),
//             SizedBox(width: 18.0),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: 10.0),
//                 Text(
//                   widget.name,
//                   style: TextStyle(
//                       fontSize: 22.0,
//                       fontWeight: FontWeight.w600,
//                       color: Palette.lightBlack),
//                 ),
//                 SizedBox(height: 10.0),
//                 CardSubtitle(text: widget.position),
//                 SizedBox(height: 6.0),
//                 CardSubtitle(text: widget.phone),
//                 SizedBox(height: 6.0),
//                 CardSubtitle(text: widget.email)
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
