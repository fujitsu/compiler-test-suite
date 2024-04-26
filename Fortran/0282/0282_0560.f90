 program main
   integer :: pos = verify(4_"abcd", 4_"abdce",  back=.true. )
   integer :: k = kind(verify(4_"abcd", 4_"abdce",  back=.true. ))
    
   if ( pos /= verify(4_"abcd", 4_"adbce",  back=.true. )) print *, 101
   if ( k   /= kind(verify(4_"abcd", 4_"abdce",  back=.true. ))) print *, 102
    
   print *, "PASS "

 end 
