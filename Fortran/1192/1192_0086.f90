     module m1
       type :: d
         integer(8)::d1
         integer,allocatable:: dd
       end type
       type :: c
         integer(8)::c1
         class(d),allocatable:: cc
       end type
       type :: b
         integer(8)::b1
         class(c),allocatable:: bb
       end type
     end
     
     subroutine s1
     use m1
     class(*),allocatable :: v1,v2
     allocate(b::v1)
     select type(v1)
       type is(b)
         allocate(v1%bb)
         allocate(v1%bb%cc)
         allocate(v1%bb%cc%dd,source=1)
     end select
     allocate(v2,source=v1)
     select type(v2)
       type is(b)
         v2%bb%cc%dd=-1
     end select
     k=0
     select type(v1)
       type is(b)
         if (v1%bb%cc%dd/=1) print *,1001,v1%bb%cc%dd
         k=1
     end select
     if (k/=1) print *,9001
     end

     call s1
     print *,'sngg283p : pass'
     end 

