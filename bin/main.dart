// https://s1.whiteboardfox.com/s/2ae37dc832647bad.png
class Link {
  String value;
  Link next;

  Link(this.value);
}

main() {
  //Implementation of the given diagram https://s1.whiteboardfox.com/s/2ae37dc832647bad.png
  Link firstLink = Link('Raj');
  Link secondLink = Link('Makiko');
  firstLink.next = secondLink;

  Link thirdLink = Link('Paul');
  secondLink.next = thirdLink;

  Link fourthLink = Link('Suresh');
  thirdLink.next = fourthLink;

  Link fifthLink = Link('Avinash');
  fourthLink.next = fifthLink;

  Link sixthLink = Link('Parvati');
  fifthLink.next = sixthLink;

  sixthLink.next=null;

  printChain(firstLink);
  print('-------');
  //removeLink(firstLink, 'Raj');
  printChain(removeLink(firstLink, 'Parvati'));
}

// Printing the linkTree
void printChain(Link link) {
  Link currLink = link;
  while (currLink != null) {
    print(currLink.value);
    currLink = currLink.next;
  };
}

// Exercise: Write a function which takes in a link and a word. It should remove the link with value matching word
Link removeLink(Link firstLink, String word) {
  // Implement function here
 Link currLink=firstLink;
 Link temp;
 bool flagNodeFound=false;
 while(currLink.next!=null)
   {
     if(currLink.value==word)
       {
         temp=currLink.next;
         firstLink=temp;
         flagNodeFound=true;
         return firstLink;
       }// code for deleting  the first node
     else if(currLink.next.value==word)
           {
             temp=currLink.next.next;
             currLink.next=temp;
             flagNodeFound=true;
             return firstLink;
           }
     currLink=currLink.next;//move to next Link
     
   }

     }

