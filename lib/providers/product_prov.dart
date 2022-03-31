import 'package:flutter/material.dart';
import 'package:uiapp1/providers/product.dart';

class Productss with ChangeNotifier{
 List<product> _items =[
   product(
     id: 'p1',
     title: 'Bacterial Blight',
     description: 'Scientific Name: Bacterial Blight\n\n Introduction: Bacterial Blight also called Angular Leaf Spot, is a disease caused by the bacterium, Xanthomonas citri pv. malvacearum (“Xcm”). '
         'Bacterial Blight was first described in the United States in 1891 and continues to be a major disease of cotton throughout the world.\n\n'
         ' Management: The use of resistant cultivars is the most economical option to minimize yield losses from Bacterial Blight)',
     price: 29.29,
     imgUrl:
     'http://agfax.com/wp-content/uploads/cotton-leaf-bacterial-blight-kimura-texas-600x400.jpg'),

   product(
       id: 'p2',
       title: 'Fusssarium Wilt',
       description: 'Scientific Name:Fussarium Wilt\n\n Introduction: Fusarium wilt is a destructive vascular wilt and root rot of many plant species, including all species of domesticated cotton. The disease was first described in Alabama cotton fields in 1892 and is now widespread in most states across the US Cotton Belt and throughout the world. Fusarium wilt often kills susceptible plants in a heavily infested field. It may cause significant yield losses to growers. In the past, Fusarium wilt of cotton often tended to occur only in susceptible cultivars grown in neutral toacidic sandy soil with significant populations of root knotnematode. However, a new variant of the Fusarium wiltfungus (race 4 or FOV4) was found widespread in the San Joaquin Valley of California in 2001. Since 2017, race 4 has been found in many fields in New Mexico and western Texas. Fusarium wilt can be a major problem with associated yield losses exceeding 29,100 bales across the US Cotton Belt.',
       price: 36.29,
       imgUrl:
       'http://www.mississippi-crops.com/wp-content/uploads/2015/07/IMG_0672-4-1024x765.jpg'),

   product(
       id: 'p3',
       title: 'Curl Virus',
       description: 'Scientific Name:Curl Virus\n Introduction: Cotton leaf curl viruses (CLCuV) are a number of plant pathogenic virus species of the family Geminiviridae.In Asia and Africa the major disease of cotton is caused by the Cotton leaf curl geminivirus (CLCuV).  Plants infected early in the season are stunted and yield is reduced drastically.  This virus devastated the Pakistan cotton industry in early 1990s where it caused an estimated yield reduction of 30-35%..\n\n'
           ' Prevention and control: Do not plant cotton near tomato and/or other crops susceptible to whiteflies or vice\n Use acephate-imidacloprid at 50% - 1.8% respectively, at every seven days.)',

       price: 49.29,
       imgUrl:
       'http://bugwoodcloud.org/images/768x512/0454058.jpg'),
   product(
       id: 'p4',
       title: 'Healthy Leaf',
       description: 'A healthy cottton leaf',
       price: 59.29,
       imgUrl:
       'https://thumbs.dreamstime.com/z/great-view-india-s-cotton-leaf-best-natural-seenn-indian-nindian-indiannindian-cotton-leaf-great-view-india-s-cotton-leaf-189812153.jpg'),
   product(
       id: 'p5',
       title: 'Fusssarium Wilt',
       description: 'Scientific Name:Fussarium Wilt\n\n Introduction: Fusarium wilt is a destructive vascular wilt and root rot of many plant species, including all species of domesticated cotton. The disease was first described in Alabama cotton fields in 1892 and is now widespread in most states across the US Cotton Belt and throughout the world. Fusarium wilt often kills susceptible plants in a heavily infested field. It may cause significant yield losses to growers. In the past, Fusarium wilt of cotton often tended to occur only in susceptible cultivars grown in neutral toacidic sandy soil with significant populations of root knotnematode. However, a new variant of the Fusarium wiltfungus (race 4 or FOV4) was found widespread in the San Joaquin Valley of California in 2001. Since 2017, race 4 has been found in many fields in New Mexico and western Texas. Fusarium wilt can be a major problem with associated yield losses exceeding 29,100 bales across the US Cotton Belt.',

       price: 36.29,
       imgUrl:
       'http://www.mississippi-crops.com/wp-content/uploads/2015/07/IMG_0672-4-1024x765.jpg'),

   product(
       id: 'p6',
       title: 'Bacterial Blight',
       description: 'Scientific Name: Bacterial Blight\n\n Introduction: Bacterial Blight also called Angular Leaf Spot, is a disease caused by the bacterium, Xanthomonas citri pv. malvacearum (“Xcm”). '
           'Bacterial Blight was first described in the United States in 1891 and continues to be a major disease of cotton throughout the world.\n\n'
           ' Management: The use of resistant cultivars is the most economical option to minimize yield losses from Bacterial Blight)',
       price: 29.29,
       imgUrl:
       'http://agfax.com/wp-content/uploads/cotton-leaf-bacterial-blight-kimura-texas-600x400.jpg'),


 ];

 var _showFavouritesOnly= false;


 List<product> get items {
   if(_showFavouritesOnly){
     return _items.where((prodItem) =>prodItem.isFavourite ).toList();
   }
   return [..._items];
 }

 product findById(String id){
   return _items.firstWhere((prod) =>prod.id==id );

 }

 List<product> get favouritItems{
   return _items.where((prodItem) =>prodItem.isFavourite ).toList();
 }

 // void showFavourite(){
 //   _showFavouritesOnly= true;
 //   notifyListeners();
 // }
 // void showAll(){
 //   _showFavouritesOnly=false;
 //   notifyListeners();
 // }
   void addProducts(){
   //_items.add(value);
   notifyListeners();
   }


 }
