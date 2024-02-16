type ty
complex(kind=8) :: cmp1(2) =[ (17,19),(21,22)]
end type ty
type(ty) :: obj(3) =ty()
        call sub()
contains
  subroutine sub()
        character(len =int(obj(2)%cmp1(2)%im)) :: ii

        if(len(ii) .ne. 22)print*,101
        print*,"PASS"
 end subroutine
end
