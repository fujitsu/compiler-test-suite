      program main
      real,dimension(5)::a,right_result                                     
      data a/1.0,2.0,3.0,4.0,5.0/                                       
      data right_result/5*1.0/                                          
      logical no_good/.false./                                          
                                                                        
      a=a(1)                                                            
                                                                        
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
      end                                                               
