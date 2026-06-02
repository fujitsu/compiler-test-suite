     module m1
       type :: b
         integer(8):: d1
         class(c),allocatable:: bb
       end type
       type :: c
         integer(8):: d2(2)
         type (b):: cc
       end type
     end
     
     subroutine s2
     use m1
     class(c),allocatable :: v2
     allocate(v2)
     v2%d2=1
     allocate(v2%cc%bb)
     v2%cc%bb%d2=11
     allocate(v2%cc%bb%cc%bb)
     v2%cc%bb%cc%bb%d2=111
     if (any(v2%cc%bb%cc%bb%d2/=111)) print *,1001
     if (any(v2%cc%bb%d2/=11)) print *,1011
     if (any(v2%d2/=1)) print *,1021
     deallocate(v2)
     end
     call s2
     print *,'sngg832p : pass'
     end 

