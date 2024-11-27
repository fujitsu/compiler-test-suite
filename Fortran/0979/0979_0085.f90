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
ii=0
call sub(ii)
if (ii.ne.1) write(6,*) "NG"
print *,"pass"
end

subroutine sub(ip)
integer :: ip
pointer :: ip
intent(inout) :: ip
write(9,*) ip          
rewind 9             
read(9,*) ip          
call sub_a(ip)
end subroutine
subroutine sub_a(pp)
integer :: pp
intent(inout) :: pp
pp=1
end subroutine
