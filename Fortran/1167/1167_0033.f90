type ty
complex :: cmp1(2) =[ (17,19),(21,22)]
end type ty
type(ty) :: obj(3) =ty()
associate(p=>obj)
block
        character(len =int(p(2)%cmp1(2)%im)) :: ii

        if(len(ii) .ne. 22)print*,101
 end block
 end associate
        print*,"sngg956q : pass"
end
