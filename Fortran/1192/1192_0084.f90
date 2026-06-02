     module m1
       type :: b
         type (c),allocatable:: bb
       end type
       type :: c
         type (b),allocatable:: cc
       end type
     end
     
     subroutine s2
     use m1
     type (b),allocatable :: v1
     type (c),allocatable :: v2
     allocate(b::v1)
     allocate(c::v2)
     end
     call s2
     print *,'sngg281p : pass'
     end 

