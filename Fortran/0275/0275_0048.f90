Module m
type ty
character(len=3) :: act1(3)="dse"
character(len=4) :: act2="case"
end type
contains
subroutine s()
type(ty) :: obj
associate(a => obj%act1(2)(2:3), c =>obj%act2)
!$omp parallel private(obj)
 obj%act1="var"
 obj%act2="imp"
 if(a .ne. "se")print*,"101",a
 if(c .ne. "case")print*,"103",c
!$omp end parallel
print*, "pass"
end associate
end subroutine
end module

use m
call s()
end


