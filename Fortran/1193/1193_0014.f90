     module m1
       type    t1
         integer(8)::d1
       end type
       type    t2
         integer(8)::d2
         class (t1),allocatable:: bbb
       end type
       contains
       recursive subroutine s(d,k)
         class(*)::d
         type(t2):: a
!print *,100
      if (k==1) then
        select type(d)
           type is(t1)
             allocate(a%bbb)
!print *,210
             call xs(a%bbb,2)
           class default
            print *,'error 300'
         end select
      else
        select type(d)
           type is(t1)
            print *,500
           class default
            print *,'error 400'
         end select
      end if
       end subroutine
       recursive subroutine xs(d,k)
         class(*)::d
         type(t2):: a
!print *,100
      if (k==1) then
        select type(d)
           type is(t1)
             allocate(a%bbb)
!print *,210
             call s(a%bbb,2)
           class default
            print *,'error 300'
         end select
      else
        select type(d)
           type is(t1)
            !print *,500
           class default
            print *,'error 400'
         end select
      end if
       end subroutine
     end
     
     subroutine s1
     use m1
     class(*),allocatable :: v1
     allocate(t1::v1)
     call s(v1,1)
     end

     call s1
     print *,'sngg300p : pass'
     end 

