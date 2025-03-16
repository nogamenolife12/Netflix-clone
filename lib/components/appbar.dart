import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget implements PreferredSize{
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: [
              SizedBox(width: 20,),
            Image.asset('assets/netflic.png',
            height: 30,
            width: 30,),
          SizedBox(width: 55,),
          OutlinedButton(
            onPressed: ()=>{},
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.white),
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
              visualDensity: VisualDensity(horizontal: 0, vertical: -4)
              ), 
            child: Text("Tv shows",style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
          SizedBox(width: 55,),
         OutlinedButton(
            onPressed: ()=>{},
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.white),
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              visualDensity: VisualDensity(horizontal: 0, vertical: -4)
              ), 
            child: Text("Movies",style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
        SizedBox(width: 55,),
          OutlinedButton(
            onPressed: ()=>{},
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.white),
             padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              visualDensity: VisualDensity(horizontal: 0, vertical: -4)
              ), 
            child: Text("Categories",style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
          SizedBox(width: 55,),
        ],
            ),
      ),
  );
  }
  
   @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  
  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

}