import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;

    final List<Map<String, dynamic>> recentCalls = [
      {
        "profileImage": "assets/imageassets/neil_verma.jpg",
        "name": "Sachin",
        "time": "November 13, 7:04 PM",
        "type": "incoming",
        "video": true
      },
      {
        "profileImage": "assets/imageassets/neil_verma.jpg",
        "name": "Rohit",
        "time": "November 11, 8:51 PM",
        "type": "incoming",
        "video": true
      },
      {
        "profileImage": "assets/imageassets/neil_verma.jpg",
        "name": "+49 16546546",
        "subtitle": "~ Mukesh Yadav",
        "time": "November 11, 7:24 PM",
        "type": "incoming",
        "video": false
      },
      {
        "profileImage": "assets/imageassets/neil_verma.jpg",
        "name": "+49 65465465",
        "subtitle": "~ Mukesh Yadav",
        "time": "November 11, 6:45 PM",
        "type": "missed",
        "video": false
      },
      {
        "profileImage": "assets/imageassets/neil_verma.jpg",
        "name": "Sachin",
        "time": "November 11, 6:10 PM",
        "type": "incoming",
        "video": false
      },
      {
        "profileImage": "assets/imageassets/neil_verma.jpg",
        "name": "Kunal",
        "time": "November 11, 3:48 PM",
        "type": "incoming",
        "video": false
      },
      {
        "profileImage": "assets/imageassets/neil_verma.jpg",
        "name": "Kunal",
        "time": "November 11, 3:46 PM",
        "type": "missed",
        "video": false
      },
      {
        "profileImage": "assets/imageassets/neil_verma.jpg",
        "name": "Kunal",
        "time": "November 11, 3:46 PM",
        "type": "incoming",
        "video": false
      },
    ];

    Icon getArrow(String type) {
      switch (type) {
        case "incoming":
          return const Icon(Icons.call_received, color: Colors.green, size: 18);
        case "outgoing":
          return const Icon(Icons.call_made, color: Colors.grey, size: 18);
        case "missed":
          return const Icon(Icons.call_received, color: Colors.red, size: 18);
        default:
          return const Icon(Icons.help, size: 18);
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Stack(
            children: [Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Calls",
                        style: GoogleFonts.roboto(
                          fontSize: height * 0.035,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                  ],
                ),
                const SizedBox(height: 18),
                SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 18),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey[800],
                              child: Icon(Icons.call, size: 30, color: Colors.white),
                            ),
                            const SizedBox(height: 8),
                            Text("Call", style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey[800],
                              child: Icon(Icons.calendar_month, size: 30, color: Colors.white),
                            ),
                            const SizedBox(height: 8),
                            Text("Schedule", style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey[800],
                              child: Icon(Icons.dialpad, size: 30, color: Colors.white),
                            ),
                            const SizedBox(height: 8),
                            Text("Keypad", style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage("assets/imageassets/neil_verma.jpg"),
                            ),
                            const SizedBox(height: 8),
                            Text("Neil Verma", style: const TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage("assets/imageassets/neil_verma.jpg"),
                            ),
                            const SizedBox(height: 8),
                            Text("SRK", style: const TextStyle(color: Colors.black)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                Text(
                  "Recent",
                  style: GoogleFonts.roboto(
                    fontSize: height * 0.025,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 15),
                Expanded(
                  child: ListView.separated(
                    itemCount: recentCalls.length,
                    separatorBuilder: (context, index) => const SizedBox(height: 15),
                    itemBuilder: (context, index) {
                      final item = recentCalls[index];

                      return Row(
                        children: [
                          CircleAvatar(
                            radius: 27,
                            backgroundColor: Colors.grey[700],
                            backgroundImage: AssetImage(item["profileImage"]),

                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item["name"],
                                  style: GoogleFonts.roboto(
                                    color: item["type"] == "missed"
                                        ? Colors.red
                                        : Colors.black,
                                    fontSize: height * 0.023,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  children: [
                                    getArrow(item["type"]),
                                    const SizedBox(width: 5),
                                    Text(
                                      item["time"],
                                      style: GoogleFonts.roboto(
                                        color: Colors.grey[400],
                                        fontSize: height * 0.018,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          item["video"]
                              ? const Icon(Icons.videocam,
                              color: Colors.black, size: 25)
                              : const Icon(Icons.call,
                              color: Colors.black, size: 25),
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
              Positioned(bottom:20,right:20,
                  child:
                  Column(
                    children:
                    [SizedBox(height: 20,),
                      InkWell(
                        onTap: (){
                          print("Bolda kyu nhi ae singhhh Waheee Guruu ji daa Khaalsaa Waheee Guruu ji dii Watehh");
                        },
                        child: Container(height:60, width: 60,
                          child: Icon(Icons.add_call,color: Colors.white,size: 30,),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15) ,color: Color(0xFF21C063)
                          ),),
                      )

                    ],))],
          ),
        ),
      ),
    );
  }
  }

