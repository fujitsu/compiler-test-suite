     module m1
       type :: b
         class(c),allocatable:: bb
       end type
       type :: c
         class(b),allocatable:: cc
       end type
     end
     
     subroutine s1
     use m1
     class(*),allocatable :: v1,v2
     allocate(b::v1)
     allocate(c::v2)
     end

     subroutine s2
     use m1
     class(b),allocatable :: v1
     class(c),allocatable :: v2
     allocate(b::v1)
     allocate(c::v2)
     end
     call s1
     call s2
     print *,'sngg280p : pass'
     end 

