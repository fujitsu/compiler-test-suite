interface
 subroutine sub(ip)
  integer :: ip
  pointer :: ip
  intent(inout) :: ip
 end subroutine
end interface
integer :: ii
pointer :: ii
allocate(ii)
call sub(ii)
if (ii.ne.1) write(6,*) "NG"
print *,"pass"
end

subroutine sub(ip)
integer :: ip
pointer :: ip
intent(inout) :: ip
do ip=1,10
end do
call sub_a(ip)
end subroutine
subroutine sub_a(pp)
integer :: pp
intent(out) :: pp
pp=1
end subroutine
