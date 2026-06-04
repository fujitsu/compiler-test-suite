integer::a(4)
call sub(a)
contains
subroutine sub(b)
integer,contiguous::b(..)
if(is_contiguous(b) .neqv. .true.)print*,101
print*,"PASS"
end subroutine

end
