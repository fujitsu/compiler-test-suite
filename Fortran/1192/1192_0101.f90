     module m1
       type    b
         integer(8)::d1
         type (b),allocatable:: bbb
       end type
       contains
       recursive subroutine s(d,k)
         class(*)::d
         select type(z=>d)
           type is(b)
             allocate(z%bbb)
             if (k>2) return
             k=k+1
             call t(z%bbb)
           class default
            print *,'error 300'
         end select
       end

       recursive subroutine t(d)
         class(*)::d
         select type(z=>d)
           type is(b)
             allocate(z%bbb)
           class default
            print *,'error 3300'
         end select
       end
     end
     
     subroutine s1
     use m1
     class(*),allocatable :: v1!,v2
     allocate(b::v1)
     k=1
     call s(v1,k)
!     allocate(v2,source=v1)
!     select type(v2)
!       type is (b)
!         v2%bb%b=-1
!         v2%bbb%b=-1
!     end select
!     select type(v1)
!       type is (b)
!         if (v1%bb%b/=1) print *,1001,v1%bb%b
!         if (v1%bbb%b/=2) print *,1002,v1%bbb%b
!     end select
!     deallocate(v1)
     end

     call s1
     print *,'sngg313p : pass'
     end 

