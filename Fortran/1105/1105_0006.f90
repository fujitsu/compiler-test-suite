     module m1
       type :: b
         integer(8):: d1
         type (c),allocatable:: bb
       end type
       type :: c
         integer(8):: d2(2)
         type (b):: cc
       end type
     end
     
     subroutine s2
     use m1
     class(c),allocatable :: v2
     allocate(c::v2)
     end
     print *,'sngg831p : pass'
     end 

