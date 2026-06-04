subroutine s
class(*),allocatable::cptr2

      deallocate(cptr2,stat=is)
if (is==0) print *,1001
end
call s
print*,"sngg739q : pass"
end
