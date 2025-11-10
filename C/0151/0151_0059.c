
















  #include <stdio.h>
  #include "001.h"




int main()
{
  int int_wk2 = 12;
  int int_wk3 = 13;
  int int_wk4 = 14;
  int int_wk5 = 15;
  int int_wk6 = 16;
  int int_wk7 = 17;
  int int_wk8 = 18;
  int int_wk9 = 19;
  int int_wk10 = 20;
  int int_wk11 = 21;
  int int_wk12 = 22;
  int int_wk13 = 23;
  int int_wk14 = 24;
  int int_wk15 = 25;
  int int_wk16 = 26;

  int int_wk1 = 21;
#if !defined(os2)
   {int int_wk2 = 22;
#endif
    {int int_wk3 = 23;
     {int int_wk4 = 24;
      {int int_wk5 = 25;
       {int int_wk6 = 26;
        {int int_wk7 = 27;
         {int int_wk8 = 28;
          {int int_wk9 = 29;
           {int int_wk10 = 30;
            {int int_wk11 = 31;
             {int int_wk12 = 32;
              {int int_wk13 = 33;
               {int int_wk14 = 34;
                {int int_wk15 = 35;
                 {int int_wk16 = 36;}
                }
               }
              }
             }
            }
           }
          }
         }
        }
       }
      }
     }
    }
#if !defined(os2)
   }
#endif
  {
    int int_wk1 = 41;
    int int_wk2 = 42;
    int int_wk3 = 43;
    int int_wk4 = 44;
    int int_wk5 = 45;
    int int_wk6 = 46;
    int int_wk7 = 47;
    int int_wk8 = 48;
    int int_wk9 = 49;
    int int_wk10 = 50;
    int int_wk11 = 51;
    int int_wk12 = 52;
    int int_wk13 = 53;
    int int_wk14 = 54;
    int int_wk15 = 55;
    int int_wk16 = 56;
  }




  header("","block statement test proc no.2.") ;



  ichck("SCC01_05",26,int_wk16,"block into function test");




  header("","block statement test proc no.2.") ;
}
