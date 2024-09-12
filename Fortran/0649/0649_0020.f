      implicit none                                                     
      integer       j,k                                                 
      integer       isfun                                               
      external      sub1                                                
      isfun(j) = j+1                                                    
      print *,'TEST START'                                      
      call sub1()                                                       
      k = isfun(1)                                                      
      end                                                               
      subroutine sub1()                                                 
      implicit none                                                     
      external i                                                        
      integer fun1,j                                                    
      j = fun1(i)                                                       
      if(j.eq.1) then                                                   
        print *,'OK'                                                    
      else                                                              
        print *,'NG'                                                    
      endif                                                             
      print *,'TEST END'                                        
      end                                                               
      integer function i(j)                                             
      implicit none                                                     
      integer j                                                         
      i = j                                                             
      return                                                            
      end                                                               
      integer function fun1(i)                                          
      external i                                                        
      fun1 = i(1)                                                       
      return                                                            
      end                                                               
