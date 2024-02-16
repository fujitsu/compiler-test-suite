      program main
      real,dimension(5)::a,right_result                                     
      real external_function                                            
      logical no_good/.false./                                          
                                                                        
      a=99.                                                             
      a=external_function(a)                                            
                                                                        
      right_result = 99.*99.+99.*9.+99.+99.                             
      do i=1,5                                                          
         if (a(i) .NE. right_result(i)) no_good = .true.                  
      enddo                                                             
      if (no_good) then                                                 
         write (6,*) '?????? NG ??????'                         
         write (6,*) '< ACTUAL RESULT >   ',a                           
         write (6,*) '< RIGHT  RESULT >   ',right_result                
         write (6,*) '?????? NG ??????'                         
      else                                                              
         write (6,*) '!!!!!! OK !!!!!!'                         
      endif                                                             
      stop                                                              
      end program main
                                                                        
      real function external_function(d)                                
      real,dimension(5)::d                                                  
      external_function = d(1)*d(2)+d(3)*9.+d(4)+d(5)                   
      end function external_function                                    
