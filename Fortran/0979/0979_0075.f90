interface
 subroutine sub(ip)
  integer,intent(out) :: ip
  pointer :: ip
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
intent(out) :: ip
allocate(ip)
ip=0
write(9,*) ip          
rewind 9             
read(9,*) ip          
call sub_a(ip)
end subroutine
subroutine sub_a(pp)
integer :: pp
intent(out) :: pp
pp=1
end subroutine
