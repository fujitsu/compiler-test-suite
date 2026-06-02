subroutine s
class(*),allocatable::cptr2

     deallocate(cptr2,stat=is)
if (is==0) print *,1001
     allocate(character(len=3)::cptr2)
      deallocate(cptr2)
end

call s
print*,"sngg740q : pass"
end
