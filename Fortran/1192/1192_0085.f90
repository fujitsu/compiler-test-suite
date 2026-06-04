     module m1
       type :: d
         integer,allocatable:: dd
       end type
       type :: c
         class(d),allocatable:: cc
       end type
       type :: b
         class(c),allocatable:: bb
       end type
     end
     
     subroutine s1
     use m1
     class(*),allocatable :: v1
     allocate(b::v1)
     end

     subroutine s2
     use m1
     class(b),allocatable :: v1
     allocate(b::v1)
     end

     call s1
     call s2
     print *,'sngg282p : pass'
     end 

