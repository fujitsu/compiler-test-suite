subroutine s1
type x
  integer:: xx=100
end type
type(x),pointer,dimension(:)::a1,a2
character(1000)::msg=''
allocate(a1(12:15))
if (.not.associated(a1))print *,100
if (any(lbound(a1)/=12))print *,102
if (any(shape (a1)/=4))print *,103
if (any(a1%xx/=100))print *,104,a1%xx

allocate(a2(12:15),errmsg=msg)
if (.not.associated(a2))print *,1100
if (any(lbound(a2)/=12))print *,1102
if (any(shape (a2)/=4))print *,1103
if (any(a2%xx/=100))print *,1104,a2%xx
if (msg/='')print *,trim(msg)
end
call s1
print *,'pass'
end

