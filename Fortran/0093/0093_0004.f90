type ty
complex :: cmp1(2) =[ (17,19),(21,22)]
end type ty
type(ty) :: obj(3) =ty()
        call sub()
contains
  subroutine sub()
        character(len =int(obj(2)%cmp1(2)%im)) :: ii
        character(len =int(obj(2)%cmp1(2)%re)) :: jj
        character(len =int(obj(1)%cmp1(1)%im)) :: kk
        character(len =int(obj(1)%cmp1(1)%re)) :: ll

        if(len(ii) .ne. 22)print*,101
        if(len(jj) .ne. 21)print*,102
        if(len(kk) .ne. 19)print*,103
        if(len(ll) .ne. 17)print*,104
        print*,"PASS"
 end subroutine
end
