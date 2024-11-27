subroutine ifun(ii,jj)
integer ,pointer :: ii(:,:,:,:,:)
logical          :: jj
intent(out) :: ii
intent(in)    :: jj
allocate(ii(1,2:2,3:3,4:4,10))
ii(1,2,3,4,:)=(/1,2,3,4,5,6,7,8,9,10/)
end subroutine

interface 
subroutine sub(ip)
integer,pointer :: ip(:,:,:,:,:)
intent(inout) :: ip
end subroutine
end interface
integer ,pointer :: ip(:,:,:,:,:)
call sub(ip)
print *,"pass"
end
subroutine sub(ip)
interface assignment(=)
subroutine ifun(ii,jj)
integer ,pointer :: ii(:,:,:,:,:)
logical          :: jj
intent(out) :: ii
intent(in)    :: jj
end subroutine
end interface
integer,pointer :: ip(:,:,:,:,:)
intent(inout) :: ip
ip=.false.
if (ip(1,2,3,4,10).ne.10) write(6,*) "NG"
deallocate(ip)
call ifun(ip,.false.)
if (ip(1,2,3,4,10).ne.10) write(6,*) "NG"
deallocate(ip)
end

