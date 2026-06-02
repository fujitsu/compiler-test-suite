     module m1
       type :: b
         integer(8):: d1
         class(c),allocatable:: bb
       end type
       type :: c
         integer(8):: d2(2)
         !!!class(b),allocatable:: cc
         integer,allocatable:: dd
       end type
     end
     
     subroutine s2
     use m1
     class(b),allocatable :: v2
     allocate(v2)
     end
     print *,'sngg828p : pass'
     end 

