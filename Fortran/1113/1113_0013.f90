module m1
type(character(len=14)),target::at(2)="targetinternal"

type ty
 contains
  procedure,nopass ::  func_assign
end type
contains
       function func_assign(t) result(ret)
        type(character(len=14)),pointer::ret(:)
        type(character(len=14)),target::t(2)
        ret=>t
       end function
end module

use m1
type(ty) ::obj
character(len=5) ::N2="files"
character(len=9) ::N1="internals"
type(character(len=14)),target::x(2)="targetinternal"
write(x,*)N1,N2
write(obj%func_assign(at),*)N1,N2
if(any(x .ne. obj%func_assign(at)))print*,"101"
print *,"Pass"
end 
