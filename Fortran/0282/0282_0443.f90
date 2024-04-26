 program main
   integer :: pos = scan(4_"abcd", 4_"a",  back=.false. )
   integer :: k = kind(scan(4_"abcd", 4_"a",  back=.false. ))
    
   if ( pos /= scan(4_"abcd", 4_"a",  back=.false. )) print *, 101
   if ( k   /= kind(scan(4_"abcd", 4_"a",  back=.false. ))) print *, 102
    
   print *, "PASS "

 end 
