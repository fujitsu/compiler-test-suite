#include <stdio.h>
int main()
{                                    

   int fo1  ,fo2=1, fo3=1, fo4=1, fo5=1, fo6=1, fo7=1, fo8=1;
   int fo9=1,fo10=1,fo11=1,fo12=1,fo13=1,fo14=1,fo15=1,fo16=1;
   int ans1=0;

   int cs1=3,cs2=3, cs3=3, cs4=3, cs5=3, cs6=3, cs7=3, cs8=3;
   int cs9=3,cs10=3,cs11=3,cs12=3,cs13=3,cs14=3,cs15=3      ;
   int ans2=0;


 {                                   
  {                                  
   {                                 
    {                                
     {                               
      {                              
       {                             
        {                            
         {                           
          {                          
           {                         
            {                        
             {                       
              {                      
           printf(" ***  TEST-1  OK           ***\n");
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
           printf(" ***           COMPOUND STATEMENTS ***\n");


   for(fo1=1;fo1<=2;fo1++)            
   {                                 
      ans1+=1               ;         

   while(fo2<=2 )                     
   {                                 
      fo2+=1                ;         
      ans1+=1               ;
   do                                 
   {                                 
      fo3+=1                ;         
      ans1+=1               ;
   for(fo4;fo4<=2;fo4++)              
   {                                 
      ans1+=1               ;         

   while(    fo5<=2      )            
   {                                 
      fo5 +=1               ;         
      ans1+=1               ;
   do                                 
   {                                 
      fo6 +=1               ;         
      ans1+=1               ;
   for(fo7;fo7<=2;fo7++)              
   {                                 
      ans1+=1               ;         

   while(  fo8<=2      )              
   {                                 
      fo8 +=1               ;         
      ans1+=1               ;
   do                                 
   {                                 
      fo9 +=1               ;         
      ans1+=1               ;
   for(fo10;fo10<=2;fo10++)           
   {                                 
      ans1+=1               ;         

   while(fo11<=2       )              
   {                                 
      fo11+=1               ;         
      ans1+=1               ;
   do                                 
   {                                 
      fo12+=1               ;         
      ans1+=1               ;
   for(fo13;fo13<=2;fo13++)           
   {                                 
      ans1+=1               ;         

   while(  fo14<=2       )            
   {                                 
      fo14+=1               ;         
      ans1+=1               ;
   do                                 
   {                                 
      fo15+=1               ;         
      ans1+=1               ;
   }while ( fo15<=2);
   }
   }
   }while ( fo12<=2);
   }
   }
   }while ( fo9 <=2);
   }
   }
   }while ( fo6 <=2);
   }
   }
   }while ( fo3 <=2);
   }
   }
   if ( ans1 == 35 )

           printf(" ***  TEST-2  OK  FOR(FOR) ***\n");
        else
           printf(" ***  TEST-2  NG  FOR(FOR) ***\n");


   switch  (cs1) {                        
    case 1: break;                         
    case 2: break;                         
    case 3: {                             
            ans2+=1  ;

    switch  (cs2) {                       
      case 1: break;                       
      case 2: break;                       
      case 3: {                           
            ans2+=1  ;
      switch  (cs3) {                     
        case 1: break;                     
        case 2: break;                     
        case 3: {                         
                ans2+=1  ;
        switch  (cs4) {                   
          case 1: break;                   
          case 2: break;                   
          case 3: {                       
                  ans2+=1  ;
          switch  (cs5) {                 
            case 1: break;                 
            case 2: break;                 
            case 3: {                     
                    ans2+=1  ;
            switch  (cs6) {               
              case 1: break;               
              case 2: break;               
              case 3: {                   
                      ans2+=1  ;
              switch  (cs7) {             
                case 1: break;             
                case 2: break;             
                case 3: {                 
                        ans2+=1  ;
                switch  (cs8) {           
                  case 1: break;           
                  case 2: break;           
                  case 3: {               
                          ans2+=1  ;
                  switch  (cs9) {         
                    case 1: break;         
                    case 2: break;         
                    case 3: {             
                            ans2+=1  ;
                    switch  (cs10) {      
                      case 1: break;       
                      case 2: break;       
                      case 3: {           
                              ans2+=1  ;
                      switch  (cs11) {    
                        case 1: break;     
                        case 2: break;     
                        case 3: {         
                                ans2+=1  ;
                        switch  (cs12) {            
                          case 1: break;             
                          case 2: break;             
                          case 3: {                 
                                  ans2+=1  ;
                          switch  (cs13) {          
                            case 1: break;           
                            case 2: break;           
                            case 3: {               
                                    ans2+=1  ;
                            switch  (cs14) {        
                              case 1: break;         
                              case 2: break;         
                              case 3: {             
                                      ans2+=1  ;
                              switch  (cs15) {      
                                case 1: break;       
                                case 2: break;       
                                case 3: {           
                                        ans2+=1  ;
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
   if ( ans2== 15 )

           printf(" ***  TEST-3  OK  SWC(SWC) ***\n");
        else
           printf(" ***  TEST-3  NG  SWC(SWC) ***\n");

}
