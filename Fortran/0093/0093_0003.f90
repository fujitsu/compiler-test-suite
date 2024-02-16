type ty
complex :: cmp1 = (17,19)
end type ty
type(ty),parameter :: obj(3) =ty()
        character(len =int(obj(2)%cmp1%re)) :: ii
        character(len =int(obj(2)%cmp1%im)) :: jj

if(len(ii) .ne. 17)print*,101
if(len(jj) .ne. 19)print*,102,len(jj)

        print*,"PASS"
        end
