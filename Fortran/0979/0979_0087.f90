subroutine ifun(ii,jj)
integer ,pointer :: ii
logical          :: jj
intent(inout) :: ii
intent(in)    :: jj
allocate(ii)
ii=10
end subroutine

interface 
subroutine sub(ip)
integer,pointer :: ip
intent(inout) :: ip
end subroutine
end interface
integer ,pointer :: ip
call sub(ip)
print *,"pass"
end
subroutine sub(ip)
interface assignment(=)
subroutine ifun(ii,jj)
integer ,pointer :: ii
logical          :: jj
intent(inout) :: ii
intent(in)    :: jj
end subroutine
end interface
integer,pointer :: ip
intent(inout) :: ip
ip=.false.
if (ip.ne.10) write(6,*) "NG"
deallocate(ip)
call ifun(ip,.false.)
if (ip.ne.10) write(6,*) "NG"
deallocate(ip)
end

