type ty
complex :: cmp1 = (1,19)
end type ty
type(ty),parameter :: obj(3) =ty()
        character(kind =int(obj(2)%cmp1%re)) :: ii
        integer :: jj(int(obj(2)%cmp1%re):int(obj(2)%cmp1%im))

if(kind(ii) .ne. 1)print*,101
if(lbound(jj,1) .ne. 1)print*,102
if(ubound(jj,1) .ne. 19)print*,103

        print*,"PASS"
        end
