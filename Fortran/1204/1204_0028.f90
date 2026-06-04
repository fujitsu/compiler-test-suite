subroutine s
type x
class(*),allocatable::cptr2
end type
type (x)::w

      deallocate(w%cptr2,stat=is)
if (is==0) print *,1001
end
call s
print*,"sngg752q : pass"
end
