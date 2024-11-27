integer ,pointer,dimension(:,:,:,:,:) :: ip
call ifun(ip,.false.)
if(ubound(ip,4).ne.4) write(6,*) "NG"
print *,"pass"
contains
subroutine ifun(ii,jj)
integer ,pointer,dimension(:,:,:,:,:),intent(inout) :: ii
logical          :: jj
intent(in)    :: jj
allocate(ii(1,2,3,4,5))
end subroutine
end

