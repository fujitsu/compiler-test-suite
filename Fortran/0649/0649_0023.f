      program main                                                      
      implicit none                                                     
      external dfun,dfun_2                                              
      integer i                                                         
      common /com/i                                                     
      print *,'TEST START'                                      
      call sub(dfun_2)                                                  
      if(i.eq.99) then                                                  
        print *,'OK'                                                    
      else                                                              
        print *,'NG'                                                    
      endif                                                             
      print *,'TEST END'                                        
      end                                                               
      subroutine sub(df)                                                
      implicit none                                                     
      integer  i, df                                                    
      external  df                                                      
      i = df(1)                                                         
      end                                                               
      function dfun(j)                                                  
      implicit none                                                     
      integer dfun, dfun_2, i, j                                        
      common /com/i                                                     
      i = j                                                             
      stop 99                                                           
      entry dfun_2(j)                                                   
      i = 99                                                            
      dfun = j                                                          
      end                                                               
