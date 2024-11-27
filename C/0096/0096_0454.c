#include  <stdio.h>
#include <time.h>
 
int main()
 {
   int tbl01[8][8],tbl02[8][8],tbl03[8][8];
   int tbl04[8][8],tbl05[8][8],tbl06[8][8];
   int tbl07[8][8];
   int count,a1,a2,a3,a4,a5,a6,a7,a8,a9,b1,b2,b3;
   long int time;
   printf("      \n");
   printf("     START \n");
   clock();
   count=0;

   

   for(a2=0;a2<8;a2++)
    for(a1=1;a1<8;a1++)
     tbl01[a1][a2]=0;

   

   for(a1=0;a1<8;a1++) {                
    for(a2=1;a2<8;a2++)
     tbl01[a2][a1]=1;

    for(a2=1;a2<8;a2++) {
     b1=0+a2;
     b2=a1+a2;
     b3=a1-a2;
     if(b2<=7) tbl01[b1][b2]=1;
     if(b3>=0) tbl01[b1][b3]=1;
    }

    for(a3=0;a3<8;a3++)
     for(a2=1;a2<8;a2++)
      tbl02[a2][a3]=tbl01[a2][a3];

    

    for(a2=0;a2<8;a2++) {               
     if(tbl02[1][a2]==0) {
      for(a3=2;a3<8;a3++)
       tbl02[a3][a2]=1;

      for(a3=1;a3<7;a3++) {
       b1=1+a3;
       b2=a2+a3;
       b3=a2-a3;
       if(b2<=7)tbl02[b1][b2]=1;
       if(b3>=0)tbl02[b1][b3]=1;
      }

      for(a4=0;a4<8;a4++)
       for(a3=2;a3<8;a3++)
        tbl03[a3][a4]=tbl02[a3][a4];

      

      for(a3=0;a3<8;a3++) {             
       if(tbl03[2][a3]==0) {
        for(a4=3;a4<8;a4++)
         tbl03[a4][a3]=1;
        for(a4=1;a4<6;a4++) {
         b1=2+a4;
         b2=a3+a4;
         b3=a3-a4;
         if(b2<=7)tbl03[b1][b2]=1;
         if(b3>=0)tbl03[b1][b3]=1;
        }

       for(a5=0;a5<8;a5++)
        for(a4=3;a4<8;a4++)
         tbl04[a4][a5]=tbl03[a4][a5];

       

       for(a4=0;a4<8;a4++) {            
        if(tbl04[3][a4]==0) {
         for(a5=4;a5<8;a5++)
          tbl04[a5][a4]=1;
         for(a5=1;a5<5;a5++) {
          b1=3+a5;
          b2=a4+a5;
          b3=a4-a5;
          if(b2<=7)tbl04[b1][b2]=1;
          if(b3>=0)tbl04[b1][b3]=1;
         }

         for(a6=0;a6<8;a6++)
          for(a5=4;a5<8;a5++)
           tbl05[a5][a6]=tbl04[a5][a6];

         

         for(a5=0;a5<8;a5++) {          
          if(tbl05[4][a5]==0) {
           for(a6=5;a6<8;a6++)
            tbl05[a6][a5]=1;
           for(a6=1;a6<4;a6++) {
            b1=4+a6;
            b2=a5+a6;
            b3=a5-a6;
            if(b2<=7)tbl05[b1][b2]=1;
            if(b3>=0)tbl05[b1][b3]=1;
           }

           for(a7=0;a7<8;a7++)
            for(a6=5;a6<8;a6++)
             tbl06[a6][a7]=tbl05[a6][a7];

           

           for(a6=0;a6<8;a6++) {        
            if(tbl06[5][a6]==0) {
             tbl06[6][a6]=1;
             tbl06[7][a6]=1;
             for(a7=1;a7<3;a7++) {
              b1=5+a7;
              b2=a6+a7;
              b3=a6-a7;
              if(b2<=7)tbl06[b1][b2]=1;
              if(b3>=0)tbl06[b1][b3]=1;
             }

             for(a8=0;a8<8;a8++)
              for(a7=6;a7<8;a7++)
               tbl07[a7][a8]=tbl06[a7][a8];

             

             for(a7=0;a7<8;a7++) {     
              if(tbl07[6][a7]==0) {
               tbl07[7][a7]=1;
               if(a7+1<=7)tbl07[7][a7+1]=1;
               if(a7-1>=0)tbl07[7][a7-1]=1;

               

               for(a8=0;a8<8;a8++) {
                if(tbl07[7][a8]==0)
                 count=count+1;
               }

               for(a9=0;a9<8;a9++)
                for(a8=6;a8<8;a8++)
                 tbl07[a8][a9]=tbl06[a8][a9];

              }                        
             }                         
             for(a8=0;a8<8;a8++)
              for(a7=5;a7<8;a7++)
               tbl06[a7][a8]=tbl05[a7][a8];

            }                          
           }                           
           for(a7=0;a7<8;a7++)
            for(a6=4;a6<8;a6++)
             tbl05[a6][a7]=tbl04[a6][a7];

          }                            
         }                             
         for(a6=0;a6<8;a6++)
          for(a5=3;a5<8;a5++)
           tbl04[a5][a6]=tbl03[a5][a6];

        }                              
       }                               
       for(a5=0;a5<8;a5++)
        for(a4=2;a4<8;a4++)
         tbl03[a4][a5]=tbl02[a4][a5];

       }                               
      }                                
      for(a4=0;a4<8;a4++)
       for(a3=1;a3<8;a3++)
        tbl02[a3][a4]=tbl01[a3][a4];

     }                                 
    }                                  

    for(a3=0;a3<8;a3++)
     for(a2=1;a2<8;a2++)
      tbl01[a2][a3]=0;

   }                                   

   time=clock();
   printf("      \n");
   printf("    EIGHT QUEEN PATTERN  = %d \n",count);
   printf("      \n");
   
   if(count==92) {
    printf("      \n");
    printf("     OK \n");  }
   else          {
    printf("      \n");
    printf("     NG \n");  }
   printf("      \n");
   printf("     END \n");
   printf("      \n");
 }
