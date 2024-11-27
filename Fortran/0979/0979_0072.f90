interface
 subroutine sub(ip)
  integer :: ip
  pointer :: ip
  intent(in) :: ip
 end subroutine
end interface
integer :: ii
pointer :: ii
allocate(ii)
ii=1
call sub(ii)
if (ii.ne.1) write(6,*) "NG"
print *,"pass"
end

subroutine sub(ip)
integer :: ip
pointer :: ip
intent(in) :: ip
call sub_a(ip)
contains
subroutine sub_a(pp)
integer :: pp
intent(in) :: pp
end subroutine
end subroutine
