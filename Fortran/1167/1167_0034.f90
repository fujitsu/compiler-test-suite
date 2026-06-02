type ty
integer :: cmp1(2) =[ 17,19]
end type ty
type(ty) :: obj(3) =ty()
associate(p=>obj)
block
        character(len =int(p(2)%cmp1(2))) :: ii

        if(len(ii) .ne. 19)print*,101
 end block
 end associate
        print*,"sngg957q : pass"
end
