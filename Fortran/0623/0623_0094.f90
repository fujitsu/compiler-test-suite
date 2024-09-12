print *,'pass'
end

module mod
type ty1
end type
end
subroutine test01(cls1,cls2)
use mod
class(*) :: cls1
class(ty1) :: cls2
end

subroutine subb(cls1,cls2)
use mod
interface
subroutine test01(cls1,cls2)
use mod
class(*) :: cls1
class(ty1) :: cls2
endsubroutine
end interface
class(*) :: cls1
class(ty1) :: cls2
call test01(cls1,cls2)
end
