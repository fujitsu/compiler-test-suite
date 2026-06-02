call test01()
print *,'pass'
end

subroutine test01()
type ty1
 integer :: a(10000) =1
 real    :: b(10000) =2.0
 complex :: c(10000) =(3.0,1.0)
 logical :: d(10000) =.false.
 integer :: e(10000) =5
end type
type ty2
 type(ty1) :: s(3)
end type
type(ty2) :: str(3)
if (str(3)%s(3)%a(10000).ne.1) print *,'err 1'
if (str(3)%s(3)%b(10000).ne.2.0) print *,'err 1'
if (str(3)%s(3)%c(10000).ne.(3.0,1.0)) print *,'err 1'
if (str(3)%s(3)%d(10000).neqv..false.) print *,'err 1'
if (str(3)%s(3)%e(10000).ne.5) print *,'err 1'
end
