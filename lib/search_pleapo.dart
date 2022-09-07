import 'package:flutter/material.dart';

class SearchPleapo extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {
     
     return[
        
        IconButton(
          onPressed:(){
               
               query = "";
             
          }, 
          icon: Icon(Icons.close))
     
     ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    
     IconButton(
      onPressed: (){
        close(context, null);
      }, 
      icon: Icon(Icons.arrow_back));
    
  }

  @override
  Widget buildResults(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((timeStamp){
     close(context, query);
    });
   

    print("O Resultado da pesquisa é: "+query.toString());
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    print("As sugestões são: "+query.toString());
    return Container();
  }


}
