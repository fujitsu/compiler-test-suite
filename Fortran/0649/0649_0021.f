      program main                                                      
      implicit none                                                     
      external dsub                                                     
      integer i                                                         
      common /com/i                                                     
      print *,'TEST START'                                      
      call sub_1(dsub)                                                  
      if(i.eq.1) then                                                   
        print *,'OK'                                                    
      else                                                              
        print *,'NG'                                                    
      endif                                                             
      print *,'TEST END'                                        
      end                                                               
      subroutine sub(ds)                                                
      implicit none                                                     
      call ds                                                           
      stop 99                                                           
      entry sub_1(dt)                                                   
      call dt                                                           
      end                                                               
      subroutine dsub                                                   
      implicit none                                                     
      integer i                                                         
      common /com/i                                                     
      i = 1                                                             
      end                                                               
