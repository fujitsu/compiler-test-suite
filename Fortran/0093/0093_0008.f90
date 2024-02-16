type ty
complex :: cmp1 = (1,19)
end type ty
type(ty),parameter :: obj(3) =ty()
        character(kind =int(obj(2)%cmp1%re)) :: ii
        character(len =int(obj(2)%cmp1%im)) :: jj

if(kind(ii) .ne. 1)print*,101
if(len(jj) .ne. 19)print*,102

        print*,"PASS"
        end
