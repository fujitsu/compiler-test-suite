interface
 subroutine sub(ip)
  integer :: ip
  pointer :: ip
  intent(out) :: ip
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
intent(out) :: ip
allocate(ip)
call sub_a(ip)
ip=1
end subroutine
subroutine sub_a(pp)
integer :: pp
intent(out) :: pp
pp=1
end subroutine
