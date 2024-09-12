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
      subroutine sub(dsub)                                              
      implicit none                                                     
      call dsub                                                         
      end                                                               
      subroutine dsub                                                   
      implicit none                                                     
      integer i                                                         
      common /com/i                                                     
      i = 1                                                             
      end                                                               
