subroutine s
type x
class(*),allocatable::cc2
end type
type(x)::w

     deallocate(w%cc2,stat=is)
if (is==0) print *,1001
     allocate(character(len=3)::w%cc2)
      deallocate(w%cc2)
end

call s
print*,"sngg753q : pass"
end
