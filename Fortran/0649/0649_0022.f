      program main                                                      
      implicit none                                                     
      external dsub                                                     
      integer i                                                         
      common /com/i                                                     
      print *,'TEST START'                                      
      call sub(dsub)                                                    
      if(i.eq.1) then                                                   
        print *,'OK'                                                    
      else                                                              
        print *,'NG'                                                    
      endif                                                             
      print *,'TEST END'                                        
      end                                                               
      subroutine sub(ds)                                                
      implicit none                                                     
      external  ds                                                      
      call sub2_1(ds)                                                   
      end                                                               
      subroutine sub2(ds)                                               
      implicit none                                                     
      call ds                                                           
      stop 99                                                           
      entry sub2_1(ds)                                                  
      call ds                                                           
      end                                                               
      subroutine dsub                                                   
      implicit none                                                     
      integer i                                                         
      common /com/i                                                     
      i = 1                                                             
      end                                                               
