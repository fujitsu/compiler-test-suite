
















  #include <stdio.h>
  #include "001.h"



  int int_wk1 = 1;
  int int_wk2 = 2;
  int int_wk3 = 3;
  int int_wk4 = 4;
  int int_wk5 = 0;







int main()
{




  header("","block statement test proc.") ;



{
  int sccint01 = 1;
  int sccint02 = 2;
  int sccint03 = 3;

  switch (sccint01){
    case 0  : sccint01 += 1;
    case 1  : sccint01 += 2;
              sccint02 += 2;
              sccint03 += 2;
              goto loopout;
    case 2  : sccint01 += 3;
              break;
    default : sccint01 += 10;
              break;
  }
loopout : sccint01 += 5;
          sccint02 += 5;
          sccint03 += 5;

  ichck("SCC01_01",8,sccint01,"block into labeled statement test");
}



{
  short int sccsi01 = 1;
  short int sccsi02 = 2;
  short int sccsi03 = 3;
  short int sccsi04 = 4;
  short int sccsi05 = 5;
  short int sccsi06;
  short int sccsi07;
  short int sccsi08;

  if (sccsi01 != 0){
    sccsi01 = sccsi02 * sccsi03;   
      {sccsi02 = sccsi01 * sccsi02;   
        {sccsi03 = sccsi02 + sccsi01;   
          {sccsi04 = sccsi03 + sccsi03;   
            {sccsi05 = sccsi04 - sccsi02;   
              {sccsi06 = sccsi05 - sccsi01;   
                {sccsi07 = sccsi06 * sccsi03;   
                  {sccsi08 = sccsi07 * sccsi02;   
                    {sccsi06 = sccsi08 / sccsi01;   
                      {sccsi07 = sccsi06 / sccsi06;   
                        {sccsi08 = sccsi07 * sccsi05;   
                          {sccsi06 = sccsi08 * sccsi04;   
                            {sccsi07 = sccsi06 % sccsi03;   
                              {sccsi08 = sccsi07 % sccsi06;   
                                {sccsi06 = sccsi08 + sccsi05; 
                                                              
                                  {sccsi01 = sccsi06 * sccsi04;
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
        }
      }
  }
  else 
    sccsi01 = 0;

  sichck("SCC01_02",864,sccsi01,"block into selection statement test");
}



{
  for(int_wk1 = 1; int_wk1 < 5; int_wk1++){
    int_wk2 *= int_wk1 + 3;
    int_wk2 /= 2;
    for(int_wk2 = 2; int_wk2 < 10; int_wk2 += 4){
      int_wk3 += int_wk2 + 3;
      int_wk3 /= 2;
      while(int_wk3 < 10){
        int_wk3 += 3;
        do{
          int_wk4 *= 2;
          int_wk5++;
        }while(int_wk4 < 20);
        int_wk4 = 4;
      }
      int_wk3 = 5;
    }
  }

  ichck("SCC01_03",36,int_wk5,
        "expression into iteration statement test");
}



{
  int_wk1 = 5;
  int_wk2 = 4;
  int_wk3 = 3;
  int_wk4 = 2;
  int_wk5 = 1;

  while(int_wk1){
    int_wk2 -= int_wk3;
    int_wk2 -= int_wk4;
    int_wk2 -= int_wk5;
    int_wk2 -= int_wk3;
    goto label4;
      {int_wk3 += int_wk1;           
       {int_wk3 += int_wk5;           
        {int_wk4 += int_wk1;           
         {int_wk4 += int_wk2;           
          {int_wk4 += int_wk3;           
           {int_wk5 += int_wk1;           
            {int_wk5 += int_wk2;           
             {int_wk5 += int_wk3;           
              {int_wk5 += int_wk4;           
               {int_wk3 += int_wk1;           
                {int_wk3 += int_wk5;           
                 {int_wk4 += int_wk1;           
                  {int_wk4 += int_wk2;           
                   {int_wk4 += int_wk3;           
                    {int_wk5 += int_wk1;           
label4 :
                     {int_wk1 -= 1;}                 
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
       }
      }
    if (int_wk2 > 0)
      int_wk2 += 20;
    else
      int_wk3 += 2;
    continue ;
    int_wk3 += int_wk1;
    int_wk3 += int_wk5;
    int_wk4 += int_wk1;
    int_wk4 += int_wk2;
    int_wk4 += int_wk3;
    int_wk5 += int_wk1;
    int_wk5 += int_wk2;
    int_wk5 += int_wk3;
    int_wk5 += int_wk4;
    int_wk1 -= 1;
  }
  ichck("SCC01_04",1,int_wk5,"block into jump statement test");
}




  header("","block statement test proc.") ;
}
