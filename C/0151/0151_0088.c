
















  #include "001.h"

  int extblk1=111 ;               
  int judge = 0 ;                 
  int int_nest ;





int main()
  {
    int extblk1=777 ;               


  header("","IDENTIFER SCOPE TEST") ;




int_nest:
    {
     int int_nest = 1;
       {
        static int int_nest = 2 ;
          {
           register int int_nest = 3 ;
             { 
              int int_nest = 4;
                {
                 int int_nest = 5;
                   {
                    auto int int_nest = 6;
                      {
                       int int_nest = 7;
                         {
                          static int int_nest = 8;
                            {
                             int int_nest = 9;
                               {
                                register int int_nest = 10;
                                  {
                                   auto int int_nest = 11;
                                     {
                                      int int_nest = 12;
                                        {
                                         static int int_nest = 13;
                                           {
                                            auto int int_nest = 14;
                                            if (int_nest==14)
                                            judge++ ;
                                           } 
                                         if (int_nest==13)
                                                          judge++ ;
                                        } 
                                      if (int_nest==12)
                                                       judge++ ;
                                     } 
                                   if (int_nest==11)
                                                    judge++ ;
                                  } 
                                if (int_nest==10)
                                                 judge++ ;
                               } 
                              if (int_nest==9)
                                               judge++ ;
                            } 
                          if (int_nest==8)
                                           judge++ ;
                         } 
                       if (int_nest==7) 
                                        judge++ ;
                      } 
                    if (int_nest==6)
                                     judge++ ;
                   } 
                 if (int_nest==5)
                                  judge++ ;
                } 
              if (int_nest==4)
                               judge++ ;
             } 
           if (int_nest==3)
                            judge++ ;
          } 
        if (int_nest==2)
                         judge++ ;
       } 
     if (int_nest==1)
                      judge++ ;
    }
   {
     switch (int_nest) {
       case 0 : if (judge==14) {int_nest++ ;judge++ ;goto int_nest ;}
                else break ;
       case 1 : if (judge==29) {int_nest++ ;judge++ ;goto int_nest ;}
                else break ;
       case 2 : if (judge==44) {int_nest++ ;judge++ ;goto int_nest ;}
                else break ;
       case 3 : if (judge==59) {int_nest++ ;judge++ ;goto int_nest ;}
                else break ;
       case 4 : if (judge==74) {int_nest++ ;judge++ ;goto int_nest ;}
                else break ;
       default: break ;
     }
     ichck("TKS01.10",89,judge,
                        "nest, block scope and file scope test") ;
  }



    {
        extern int extblk1 ;      
        judge = 0;
        if (extblk1==111) judge++ ;
        extblk1+=1 ;              
    }
    if (extblk1==777) judge++ ;
    { 
        extern int extblk1 ;      
        if (extblk1==112) judge++ ;
        extblk1+=1 ;              
    }
    if (extblk1==777) judge++ ;
    { 
        extern int extblk1 ;      
        if (extblk1==113) judge++ ;
        extblk1+=1 ;              
    }
    if (extblk1==777) judge++ ;
    { 
        extern int extblk1 ;      
        if (extblk1==114) judge++ ;
        extblk1+=1 ;              
    }
    if (extblk1==777) judge++ ;
    { 
        extern int extblk1 ;      
        if (extblk1==115) judge++ ;
        extblk1+=1 ;              
    }
    if (extblk1==777) judge++ ;
    { 
        extern int extblk1 ;      
        if (extblk1==116) judge++ ;
        extblk1+=1 ;              
    }
    if (extblk1==777) judge++ ;
    ichck("TKS01.11",12,judge,
                        "external in block, file scope test") ;

  header("","IDENTIFER SCOPE TEST") ;
  }
  int extblk1 ;                   
