call test01()
print *,'pass'
end

subroutine test01()
type ty1
  integer  :: itb
end type
type (ty1),target,save :: str(10)
integer ,pointer :: jjj
data  jjj /1*str(2)%itb/
str(2)%itb=1
if (jjj.ne.1) print *,'err1'
end
