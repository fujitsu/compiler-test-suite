 program main
   integer :: pos = scan(4_"abcd", 4_"a",  back=.false., kind =1 )
   integer :: k = kind(scan(4_"abcd", 4_"a",  back=.false.,kind=1 ))
    
   if ( pos /= scan(4_"abcd", 4_"a",  back=.false., kind = 1 )) print *, 101
   if ( k   /= kind(scan(4_"abcd", 4_"a",  back=.false.,kind = 1 ))) print *, 102
    
   print *, "PASS "

 end 
