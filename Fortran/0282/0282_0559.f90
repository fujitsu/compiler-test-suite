 program main
   integer :: pos = verify(4_"abcd", 4_"a",  back=.false. )
   integer :: k = kind(verify(4_"abcd", 4_"a",  back=.false. ))
    
   if ( pos /= verify(4_"abcd", 4_"a",  back=.false. )) print *, 101
   if ( k   /= kind(verify(4_"abcd", 4_"a",  back=.false. ))) print *, 102
    
   print *, "PASS "

 end 
