#include <stdio.h>
int main()
{
       struct tag1{
         struct tag2{
           struct tag3{
             struct tag4{
               struct tag5{
                 struct tag6{
                   struct tag7{
                     struct tag8{
                       struct tag9{
                         struct tag10{
                           struct tag11{
                             struct tag12{
                               struct tag13{
                                 struct tag14{
                                   struct tag15{
                                               int a15     ;
                                               }str15     ;
                                             int a14     ;
                                             }str14     ;
                                           int a13     ;
                                           }str13     ;
                                         int a12     ;
                                         }str12     ;
                                       int *a11    ;
                                       }str11     ;
                                     int a10     ;
                                     }str10     ;
                                   int a9      ;
                                   }str9      ;
                                 int a8      ;
                                 }str8      ;
                               int a7      ;
                               }*str7     ;
                             int a6      ;
                             }str6      ;
                           int a5      ;
                           }str5      ;
                         int a4      ;
                         }str4      ;
                       int a3      ;
                       }str3      ;
                     int a2      ;
                     }str2      ;
                   int a1      ;
                   }str1      ;

       struct tag7 pp          ;
       int    ans1=1           ;

       union utag1{
         union utag2{
           union utag3{
             union utag4{
               union utag5{
                 union utag6{
                   union utag7{
                     union utag8{
                       union utag9{
                         union utag10{
                           union utag11{
                             union utag12{
                               union utag13{
                                 union utag14{
                                   union utag15{
                                               int b15     ;
                                               }uni15     ;
                                             char b14    ;
                                             }uni14     ;
                                           int b13     ;
                                           }uni13     ;
                                         int b12     ;
                                         }uni12     ;
                                       int b11     ;
                                       }uni11     ;
                                     int b10     ;
                                     }uni10     ;
                                   int b9      ;
                                   }uni9      ;
                                 int b8      ;
                                 }uni8      ;
                               int *b7     ;
                               }uni7      ;
                             int b6      ;
                             }uni6      ;
                           int b5      ;
                           }*uni5     ;
                         int b4      ;
                         }uni4      ;
                       int b3      ;
                       }uni3      ;
                     int b2      ;
                     }uni2      ;
                   int b1      ;
                   }uni1      ;


       union utag5 ppp         ;
       int  y=1                ;


       str1.str2.str3.str4.str5.str6.str7=&pp  ;
       str1.str2.str3.str4.str5.str6.str7->str8.
                                   str9.str10.str11.a11=
                                                                &ans1;
       str1.str2.str3.str4.str5.str6.str7->str8.str9.str10.a10 = 7  ;




   if (  *str1.str2.str3.str4.str5.str6.str7->
                  str8.str9.str10.str11.a11 == 1   &&
               str1.str2.str3.str4.str5.str6.str7->
                     str8.str9.str10.a10 == 7    )

           printf(" ***  TEST-25 OK   STRUCT  ***\n");
        else
           printf(" ***  TEST-25 NG   STRUCT  ***\n");


      uni1.uni2.uni3.uni4.uni5=&ppp         ;
      uni1.uni2.uni3.uni4.uni5->uni6.uni7.b7=&y;

   if (   *uni1.uni2.uni3.uni4.uni5->uni6.uni7.b7 == 1  )
   {

      uni1.uni2.uni3.uni4.uni5->uni6.uni7.uni8.uni9.b9=7 ;

      if ( uni1.uni2.uni3.uni4.uni5->uni6.uni7.uni8.uni9.b9 == 7 )

           printf(" ***  TEST-26 OK   UNION   ***\n");
        else
           printf(" ***  TEST-26 NG   UNION   ***\n");
   }
}
