     module m1
       type :: d
         integer(8)::d1
         integer,allocatable:: dd
       end type
       type    b
         class(d),allocatable:: bb
         type (d),allocatable:: bbb
       end type
       type,extends(b) :: c
         integer(8)::c1
         class(d),allocatable:: cc
         type (d),allocatable:: ccc
       end type
     end
     
     subroutine s1
     use m1
     class(b),allocatable :: v1,v2
     allocate(c::v1)
         allocate(v1%bb)
         allocate(v1%bbb)
         allocate(v1%bb%dd,source=1)
         allocate(v1%bbb%dd,source=2)
     select type(v1)
       type is (c)
         allocate(v1%cc)
         allocate(v1%ccc)
         allocate(v1%cc%dd,source=11)
         allocate(v1%ccc%dd,source=12)
     end select
     allocate(v2,source=v1)
         v2%bb%dd=-1
         v2%bbb%dd=-1
         if (v1%bb%dd/=1) print *,1001,v1%bb%dd
         if (v1%bbb%dd/=2) print *,1002,v1%bbb%dd
     select type(v2)
       type is (c)
         v2%cc%dd=-1
         v2%ccc%dd=-1
     end select
     select type(v1)
       type is (c)
         if (v1%cc%dd/=11) print *,11001,v1%cc%dd
         if (v1%ccc%dd/=12) print *,11002,v1%ccc%dd
     end select
     end

     call s1
     print *,'sngg287p : pass'
     end 

