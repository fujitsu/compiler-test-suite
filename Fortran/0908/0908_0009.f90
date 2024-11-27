integer::a(4)
call sub(a)
contains
subroutine sub(b)
integer,contiguous::b(4)
if(is_contiguous(b) .neqv. .true.)print*,101
print*,"pass"
end subroutine

end
