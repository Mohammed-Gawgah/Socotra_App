import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'functions.dart';

class FullDetails extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final image ;
   const FullDetails(this.image, {Key? key}) : super(key: key) ;

  

  @override
  State<FullDetails> createState() => _FullDetailsState();
}

class _FullDetailsState extends State<FullDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: size(widget.image)
                  ? MediaQuery.of(context).size.height
                  : MediaQuery.of(context).size.height * 0.5,
              margin: size(widget.image)? const EdgeInsets.all(0) : const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: size(widget.image)? const BorderRadius.vertical(bottom: Radius.circular(0)):const BorderRadius.vertical(top: Radius.circular(20) ) ,
                  image: DecorationImage(
                image: AssetImage(widget.image),
                fit: BoxFit.fill,
              )),
            ),
            Container(
                margin: size(widget.image) ? const EdgeInsets.all(15) : const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.2),
                  borderRadius: BorderRadius.circular(15),
                ),
              child: IconButton(
                icon: const Icon(CupertinoIcons.back,color: Colors.white,),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              ),),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: double.infinity,
                height: size(widget.image) ? MediaQuery.of(context).size.height * 0.4 : MediaQuery.of(context).size.height * 0.55,
                margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  color: size(widget.image) ? Colors.black.withOpacity(.3) : Colors.white,
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(50)),

                  boxShadow:  [

                            BoxShadow(
                              color: size(widget.image) ? Colors.transparent : const Color.fromARGB(124, 189, 189, 189),
                              offset: const Offset(-1, -1),
                              blurRadius: 10,
                              spreadRadius: .5,
                            )
                          ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Container(
                      child: Text(
                        name(widget.image),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: size(widget.image) ? Colors.white : Colors.black.withOpacity(.5),
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Divider(color: size(widget.image) ? Colors.white : Colors.black.withOpacity(.5),thickness: 2,endIndent: 40,indent: 40,),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                        child: Text(
                      description(image: widget.image),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: size(widget.image) ? Colors.white : Colors.black.withOpacity(.5),
                      ),
                    )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


