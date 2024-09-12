call test01()
print *,'pass'
end

subroutine test01()
type ty1
  integer(4) :: aaa
  integer  :: itb(10)
end type
type (ty1),target,save :: str(10)
integer ,pointer :: jjj(:),kkk(:)
data jjj /1*str(2)%itb/
str(2)%itb=(/(i,i=1,10)/)
kkk=>str(2)%itb
do i=1,10
  if (jjj(i).ne.kkk(i)) print *,'err1'
end do
end
