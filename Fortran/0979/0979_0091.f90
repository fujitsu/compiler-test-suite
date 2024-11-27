subroutine ifun(ii,jj)
integer ,pointer,dimension(:,:,:,:,:),intent(out) :: ii
logical          :: jj
intent(in)    :: jj
allocate(ii(1,2:2,3:3,4:4,10))
ii(1,2,3,4,:)=(/1,2,3,4,5,6,7,8,9,11/)
if (ii(1,2,3,4,10).ne.11) write(6,*) "NG"
end subroutine

subroutine jfun(ii,jj)
integer ,dimension(2:2,3:3,4:4,1:10),intent(out) :: ii
logical          :: jj
intent(in)    :: jj
ii(2,3,4,:)=(/1,2,3,4,5,6,7,8,9,10/)
end subroutinE

interface 
subroutine sub(ip)
integer,dimension(1,1,1,1,1),intent(inout),pointer :: ip(:,:,:,:,:)
end subroutine
end interface
integer ,pointer :: ip(:,:,:,:,:)
call sub(ip)
print *,"pass"
end
subroutine sub(ip)
interface assignment(=)
subroutine ifun(ii,jj)
integer ,pointer,dimension(:,:,:,:,:),intent(out) :: ii(:,:,:,:,:)
logical          :: jj
intent(in)    :: jj
end subroutine
subroutine jfun(ii,jj)
integer ,dimension(2:2,3:3,4:4,1:10),intent(out) :: ii
logical          :: jj
intent(in)    :: jj
end subroutinE
end interface

integer,pointer :: ip(:,:,:,:,:)
intent(inout) :: ip
integer arr(1)
allocate(ip(1,2:2,3:3,4:4,10))
arr=1
ip(1,:,:,:,:)=.false.
if (ip(1,2,3,4,10).ne.10) write(6,*) "NG"
call jfun(ip(1,:,:,:,:),.false.)
if (ip(1,2,3,4,10).ne.10) write(6,*) "NG"
ip=.false.
if (ip(1,2,3,4,10).ne.11) write(6,*) "NG"
call ifun(ip,.false.)
if (ip(1,2,3,4,10).ne.11) write(6,*) "NG"
deallocate(ip)
end
