     module m1
       type :: d
         integer(8)::d1
         integer,allocatable:: dd
       end type
       type    b
         class(d),allocatable:: bb
         type (d),allocatable:: bbb
       end type
     end
     
     subroutine s1
     use m1
     class(*),allocatable :: v1,v2
     allocate(b::v1)
     select type(v1)
       type is (b)
         allocate(v1%bb)
         allocate(v1%bbb)
         allocate(v1%bb%dd,source=1)
         allocate(v1%bbb%dd,source=2)
     end select
     allocate(v2,source=v1)
     select type(v2)
       type is (b)
         v2%bb%dd=-1
         v2%bbb%dd=-1
     end select
     select type(v1)
       type is (b)
         if (v1%bb%dd/=1) print *,1001,v1%bb%dd
         if (v1%bbb%dd/=2) print *,1002,v1%bbb%dd
     end select
     deallocate(v1)
     end

     call s1
     print *,'sngg288p : pass'
     end 

