type ty
integer :: cmp1 
end type ty
type(ty) :: obj(3) =ty(19)
associate(p=>obj)
block
        character(len =int(p(2)%cmp1)) :: ii

        if(len(ii) .ne. 19)print*,101
 end block
 end associate
        print*,"sngg958q : pass"
end
