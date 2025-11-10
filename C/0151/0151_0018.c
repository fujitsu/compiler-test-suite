
















  #include "001.h"





int main()
  {

  header("","ARRAY EXPRESION TEST") ;




   {
      int judge1 = 0 , judge2 = 0 ;
      int i ;
      int tbl1[10]={0,1,2,3,4,5,6,7,8,9} ;
      for (i=0;i<10;i++) {
          if (tbl1[i]==i) judge1++ ;
          if (i[tbl1]==i) judge2++ ;
       }
      if (judge1==judge2) judge2++ ;
      ichck("FEA01.16",11,judge2,"a[5] equal 5[a]");
   }



   {
     int judge = 0 ;
     int i ;
     char ctbl[12]={'c','p','r','o','g','r','a','m','i','n','g','\0'};
     char *cptr ;
     cptr=ctbl ;
     for (i=0;i<12;i++) {
         if (ctbl[i]==*cptr) judge++ ;
         cptr++ ;
      }
     ichck("FEA01.17",12,judge,"char *a ----> a[]");
   }



   {
     int judge = 0 ;
     int i ;
     char ctbl[12]={'c','p','r','o','g','r','a','m','i','n','g','\0'};
     for (i=0;i<12;i++) {
         switch ((*(ctbl+(i)))) {
            case 'c'  : judge++ ;break ;
            case 'p'  : judge++ ;break ;
            case 'r'  : judge++ ;break ;
            case 'o'  : judge++ ;break ;
            case 'g'  : judge++ ;break ;
            case 'a'  : judge++ ;break ;
            case 'm'  : judge++ ;break ;
            case 'i'  : judge++ ;break ;
            case 'n'  : judge++ ;break ;
            case '\0' : judge++ ;break ;
            default   : judge-- ;
         }
      }
      ichck("FEA01.18",12,judge,"a[i] == (*(a+(i)))");
   }

  header("","ARRAY EXPRESION TEST") ;
  }
