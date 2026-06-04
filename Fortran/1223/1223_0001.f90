module m1
   type x
     integer::x1
   end type
   type b
     integer(8)::du =2
     class(x),allocatable::p
   end type
   type(b):: v1
   contains
    subroutine s1
     class(x),allocatable::g
      type(b):: v2
      if (allocated(v1%p)) print *,29291
      if (.not.same_type_as(v1%p,g)) print *,29292
      if (allocated(v2%p)) print *,29293
      if (.not.same_type_as(v2%p,g)) print *,29293
    end
end
subroutine s2
use m1
     class(x),allocatable::g
      type(b):: v2
      if (allocated(v1%p)) print *,29294
      if (.not.same_type_as(v1%p,g)) print *,29295
      if (allocated(v2%p)) print *,29296
      if (.not.same_type_as(v2%p,g)) print *,29297
end
use m1
do n=1,30
call s1
call s2
end do
print *,'sngg095t : pass'
end
