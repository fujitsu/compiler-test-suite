     module m1
       type :: d
         integer(8)::d1
         integer,allocatable:: dd
       end type
       type :: c
         integer(8)::c1
         class(d),allocatable:: cc
         type (d),allocatable:: ccc
       end type
       type :: b
         integer(8)::b1
         class(c),allocatable:: bb
         type (c),allocatable:: bbb
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
         allocate(v1%bb%ccc)
         allocate(v1%bb%cc%dd,source=1)
         allocate(v1%bb%ccc%dd,source=2)
         allocate(v1%bbb)
         allocate(v1%bbb%cc)
         allocate(v1%bbb%ccc)
         allocate(v1%bbb%cc%dd,source=11)
         allocate(v1%bbb%ccc%dd,source=12)
     end select
     allocate(v2,source=v1)
     select type(v2)
       type is(b)
         v2%bb%cc%dd=-1
         v2%bb%ccc%dd=-1
         v2%bbb%cc%dd=-1
         v2%bbb%ccc%dd=-1
     end select
     k=0
     select type(v1)
       type is(b)
         if (v1%bb%cc%dd/=1) print *,1001,v1%bb%cc%dd
         if (v1%bb%ccc%dd/=2) print *,1002,v1%bb%ccc%dd
         if (v1%bbb%cc%dd/=11) print *,10011,v1%bbb%cc%dd
         if (v1%bbb%ccc%dd/=12) print *,10012,v1%bbb%ccc%dd
         k=1
     end select
     if (k/=1) print *,9001
     end

     call s1
     print *,'sngg284p : pass'
     end 

