integer::a(5)
integer::b(10),c(5),d(10,10)
c=(/1,3,5,7,9/)

call sub(a,.true.)
call sub(b(1:10:2),.false.)
call sub(b(c),.true.)
call sub(d(2,1:10:2),.false.)

call sub2(a,.true.)
call sub2(b(1:10:2),.false.)
call sub2(b(c),.true.)
call sub2(d(2,1:10:2),.false.)

call sub3(a,.true.)
call sub3(b(1:10:2),.false.)
call sub3(b(c),.true.)
call sub3(d(2,1:10:2),.false.)

call sub4(a,.true.)
call sub4(b(1:10:2),.false.)
call sub4(b(c),.true.)
call sub4(d(2,1:10:2),.false.)

print*,"pass"
contains
subroutine sub(dmy,a)
integer,target::dmy(:)
logical::a
if(is_contiguous(dmy) .neqv. a)print*,101
end subroutine

subroutine sub2(dmy,a)
integer,target::dmy(..)
logical::a
if(is_contiguous(dmy) .neqv. a)print*,102
end subroutine

subroutine sub3(dmy,a)
type(*),target::dmy(:)
logical::a
if(is_contiguous(dmy) .neqv. a)print*,103
end subroutine

subroutine sub4(dmy,a)
type(*),target::dmy(..)
logical::a
if(is_contiguous(dmy) .neqv. a)print*,104
end subroutine

end
