import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(children: [
            Row(
              children: [
                Expanded(
                  child: Text("Communities", style: GoogleFonts.roboto(
                    fontSize: height*0.03,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 250,
              width: 250,
              child: Image.asset("assets/imageassets/communitiesBanner.png"),
            ),
            Text("Stay Connected with a Community", style: GoogleFonts.roboto(
              fontSize: height*0.025,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 10,),
            Text("Communities bring members together in topic-based groups, and make it easy to get admin announcements. Any community you're added to will appear here.",textAlign: TextAlign.center, style: GoogleFonts.roboto(
                fontSize: height*0.019,
            ),),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {},style: ElevatedButton.styleFrom(backgroundColor: Colors.green), child:
            Container(height: height*0.06,
              width: width*0.85,child: Center(child: Text("Start Your Community",style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                fontSize: height*0.022,
                color: Colors.white
              ),)),))
          ],)
        ),
      ),
    );
  }
}

