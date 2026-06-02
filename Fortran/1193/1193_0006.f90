     module m1
       type    b
         integer(8)::d1
         integer,allocatable::  b
         class(b),allocatable:: bb
         type (b),allocatable:: bbb
       end type
       contains
       recursive subroutine s(d,k)
         class(*)::d
         select type(d)
           type is(b)
             allocate(d%bb)
             allocate(d%bbb)
             allocate(d%b,source=k)
             if (k>2) return
             k=k+1
             call sx(d%bbb,k)
           class default
            print *,300
         end select
       end
       recursive subroutine sx(d,k)
         class(*)::d
         select type(d)
           type is(b)
             allocate(d%bb)
             allocate(d%bbb)
             allocate(d%b,source=k)
             if (k>2) return
             k=k+1
             call s(d%bbb,k)
           class default
            print *,300
         end select
       end
     end
     
     subroutine s1
     use m1
     class(*),allocatable :: v1,v2
     allocate(b::v1)
     k=1
     call s(v1,k)
     allocate(v2,source=v1)
     select type(v2)
       type is (b)
         v2%bbb%b=-1
     end select
     select type(v1)
       type is (b)
         if (v1%bbb%b/=2  ) print *,1002,v1%bbb%b
     end select
     deallocate(v1)
     end

     call s1
     print *,'sngg292p : pass'
     end 

