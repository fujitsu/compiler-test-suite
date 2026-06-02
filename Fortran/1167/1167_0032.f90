type ty
complex :: cmp1(2) =[ (17,19),(21,22)]
end type ty
type(ty) :: obj =ty()
associate(p=>obj)
block
        character(len =int(p%cmp1(2)%im)) :: ii

        if(len(ii) .ne. 22)print*,101
 end block
 end associate
        print*,"sngg955q : pass"
end
