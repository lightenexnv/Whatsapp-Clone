import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chatscreen extends StatelessWidget {
  const Chatscreen({super.key});


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    int myCurrentIndex = 0;
    final List<Map<String, dynamic>> RecentChats = [
      {
        "profileImage": "assets/imageassets/neil_verma.jpg",
        "personName": "Neil Verma",
        "personRecentMessage": "Hello Guys",
        "personRecentMessageTime": "10:45 AM",
        "status": "read",
      },
      {
        "profileImage": "assets/imageassets/neil_verma.jpg",
        "personName": "Rohit",
        "personRecentMessage": "Kaise ho Bhaiya",
        "personRecentMessageTime": "9:22 AM",
        "status": "delivered",
      },
      {
        "profileImage": "assets/imageassets/neil_verma.jpg",
        "personName": "Abhinav",
        "personRecentMessage": "Let's record tonight?",
        "personRecentMessageTime": "Yesterday",
        "status": "not delivered",
      },
      {
        "profileImage": "assets/imageassets/neil_verma.jpg",
        "personName": "Tejas",
        "personRecentMessage": "Ok done!",
        "personRecentMessageTime": "Wednesday",
        "status": "no network",
      },
      {
      "profileImage": "assets/imageassets/neil_verma.jpg",
      "personName": "Abhinav",
      "personRecentMessage": "Let's record tonight?",
      "personRecentMessageTime": "Yesterday",
      "status": "read",
      },
      {
      "profileImage": "assets/imageassets/neil_verma.jpg",
      "personName": "Keshav",
      "personRecentMessage": "Bro send the clip.",
      "personRecentMessageTime": "10:24 AM",
      "status": "read",
      },
    {
    "profileImage": "assets/imageassets/neil_verma.jpg",
    "personName": "Tejas",
    "personRecentMessage": "Call me when free.",
    "personRecentMessageTime": "Today",
    "status": "read",
    },
    {
    "profileImage": "assets/imageassets/neil_verma.jpg",
    "personName": "Alison",
    "personRecentMessage": "Meeting postponed.",
    "personRecentMessageTime": "Mon",
    "status": "read",
    },
    {
    "profileImage": "assets/imageassets/neil_verma.jpg",
    "personName": "Roger",
    "personRecentMessage": "Join VC?",
    "personRecentMessageTime": "8:15 PM",
    "status": "read",
    },
    {
    "profileImage": "assets/imageassets/neil_verma.jpg",
    "personName": "Vivek",
    "personRecentMessage": "Gym today?",
    "personRecentMessageTime": "5:50 PM",
    "status": "read",
    },

    ];

    Icon getStatusIcon(String status) {
      switch (status) {
        case "read":
          return const Icon(Icons.done_all, color: Colors.blue, size: 18);
        case "delivered":
          return const Icon(Icons.done_all, color: Colors.grey, size: 18);
        case "not delivered":
          return const Icon(Icons.done, color: Colors.grey, size: 18);
        case "no network":
          return const Icon(Icons.timer_outlined, color: Colors.red, size: 18);
        default:
          return const Icon(Icons.help_outline, size: 18);
      }
    }


    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child:
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "WhatsApp",style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: height*0.03
                      ),
                      ),
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.qr_code_scanner_outlined)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
                  ],
                ),SizedBox(height: 8,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintText: "Ask Meta Ai or Search",
                        hintStyle: GoogleFonts.roboto(
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: width * 0.02, vertical: 11)
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: ListView.separated(
                      itemCount: RecentChats.length,
                      itemBuilder: (context, index) {
                        final item = RecentChats[index];
                        return Row(
                          children: [
                            CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage(item["profileImage"]),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(item["personName"],
                                      style: GoogleFonts.roboto(fontSize: height * 0.025)),
                                  Row(
                                    children: [
                                      getStatusIcon(item["status"]),
                                      SizedBox(width: 5),
                                      Text(item["personRecentMessage"],
                                          style: GoogleFonts.roboto(
                                              color: Colors.grey[600])),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Text(item["personRecentMessageTime"]),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(height: 15),
                    ),
                  ),
                ),

              ],
            ),
          Positioned(bottom:20,right:20,
              child:
              Column(
                children:
                [InkWell(
                  onTap: (){
                    print("Namaste");
                  },child:
                ClipRRect(borderRadius: BorderRadius.circular(15),
                  child: Image.asset("assets/imageassets/Meta_AI_logo.png",
                    height: 50,
                    width:50,
                    fit: BoxFit.cover
                    ,),
                ),
                ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      print("Bolda kyu nhi ae singhhh Waheee Guruu ji daa Khaalsaa Waheee Guruu ji dii Watehh");
                    },
                    child: Container(height:60, width: 60,
                      child: Icon(Icons.message,color: Colors.white,size: 30,),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15) ,color: Color(0xFF21C063)
                      ),),
                  )

          ],))],
        ),
      )),
    );
  }
}
