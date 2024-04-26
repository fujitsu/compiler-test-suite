 program main
   integer :: pos = scan(4_"abcd", 4_"abdce",  back=.true. )
   integer :: k = kind(scan(4_"abcd", 4_"abdce",  back=.true. ))
    
   if ( pos /= scan(4_"abcd", 4_"adbce",  back=.true. )) print *, 101
   if ( k   /= kind(scan(4_"abcd", 4_"abdce",  back=.true. ))) print *, 102
    
   print *, "PASS "

 end 
