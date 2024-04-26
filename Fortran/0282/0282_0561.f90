 program main
   integer :: pos = verify(4_"abcd", 4_"a",  back=.false., kind =4 )
   integer :: k = kind(verify(4_"abcd", 4_"a",  back=.false.,kind=4 ))
    
   if ( pos /= verify(4_"abcd", 4_"a",  back=.false., kind = 4 )) print *, 101
   if ( k   /= kind(verify(4_"abcd", 4_"a",  back=.false.,kind = 4 ))) print *, 102
    
   print *, "PASS "

 end 
