     module m1
       type  t0
         integer(8)::d0
       end type
       type,extends(t0)::    t1
         integer(8)::d1
       end type
       type    t2
         integer(8)::d2
         class (t1),allocatable:: bbb
       end type
       contains
       recursive subroutine s(d,k)
         class(t0)::d
         class (t1),allocatable:: x
      if (k==1) then
        select type(z=>d)
           type is(t1)
             allocate(x)
             call s(x,2)
           class default
            print *,'error 300'
         end select
      else
        select type(d)
           type is(t1)
           class default
            print *,'error 400'
         end select
      end if
       end subroutine
     end
     
     subroutine s1
     use m1
     class(t0),allocatable :: v1
     allocate(t1::v1)
     call s(v1,1)
     end

     call s1
     print *,'sngg320p : pass'
     end 

