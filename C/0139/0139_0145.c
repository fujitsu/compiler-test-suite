#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
  
  
  
  
  
  
  


#define func2(dn1,dn2,dn3,dn4,dn5,dn6,dn7,dn8,dn9,dn10,dn11,dn12,dn13,\
             dn14,dn15,dn16,dn17,dn18,dn19,dn20,dn21,dn22,dn23,dn24,\
             dn25,dn26,dn27,dn28,dn29,dn30,dn31) \
             dn1+dn2+dn3+dn4+dn5+dn6+dn7+dn8+dn9+dn10+dn11+dn12+dn13+\
             dn14+dn15+dn16+dn17+dn18+dn19+dn20+dn21+dn22+dn23+dn24+\
             dn25+dn26+dn27+dn28+dn29+dn30+dn31
int main()
{

   int in1=1, in2=2, in3=3, in4=4, in5=5, in6=6, in7=7, in8=8, in9=9;
   int in10=0,in11=1,in12=2,in13=3,in14=4,in15=5,in16=6,in17=7,in18=8;
   int in19=9,in20=0,in21=1,in22=2,in23=3,in24=4,in25=5,in26=6,in27=7;
   int in28=8,in29=9,in30=0,in31=1;
   int rtn1,rtn2,func1();


   rtn1= func1(in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,
              in14,in15,in16,in17,in18,in19,in20,in21,in22,in23,in24,
              in25,in26,in27,in28,in29,in30,in31)             ;


   if (  rtn1 == 136 )

           printf(" *** \n");
        else
           printf(" *** \n");



   rtn2= func2(  1,  2,  3,  4,  5,  6, 7 ,  8,  9 , 10,  11,  12,  13,
                14,  15,  16,  17,  18,  19,  20,  21,  22,  23,  24,
                25,  26,  27,  28,  29,  30,  31) ;

   if (  rtn2 == 496 )

           printf(" *** \n");
        else
           printf(" *** \n");


exit (0);
}

int func1(in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,
      in14,in15,in16,in17,in18,in19,in20,in21,in22,in23,in24,
      in25,in26,in27,in28,in29,in30,in31)
int   in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13;
int   in14,in15,in16,in17,in18,in19,in20,in21,in22,in23,in24 ;
int   in25,in26,in27,in28,in29,in30,in31                     ;
{
    int x;

    x= in1+in2+in3+in4+in5+in6+in7+in8+in9+in10+in11+in12+in13+
     in14+in15+in16+in17+in18+in19+in20+in21+in22+in23+in24+
     in25+in26+in27+in28+in29+in30+in31                     ;
    return(x);
}
