call test01()
print *,'pass'
end

subroutine test01()
type ty1
  integer(1) :: aaa
  integer  :: itb(10)
end type
type (ty1),target,save :: str(10)
integer ,pointer :: jjj(:)=>str(2)%itb(1:10)
str(2)%itb(8)=1
if (jjj(8).ne.1) print *,'err1'
end
