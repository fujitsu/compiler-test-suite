print *,'pass'
end 

subroutine test01()
type ty1
  integer a(10,20)
end type
type (ty1) :: str1(2)

type ty2
  integer a(20,10)
end type
type (ty2) :: str2
integer a(10)

a=1

k=0
do i=1,10
 do j=1,20
   k=k+1
   str1(1)%a(i,j) = k
 end do
end do

str2%a = transpose(str1(1)%a)

print *,transpose(str1(1)%a(a,a))
print *,transpose(str1(1)%a(1:10,a))
print *,transpose(str1(1)%a(a,1:20))
print *,transpose(str1(1)%a(1:10,1:20))
print *,transpose(str1(1)%a(a(1):,a))
print *,transpose(str1(1)%a(a,a(1):))

print *,transpose(str2%a(a,a))
print *,transpose(str2%a(1:10,a))
print *,transpose(str2%a(a,1:10))
print *,transpose(str2%a(1:10,1:10))
print *,transpose(str2%a(a(1):,a))
print *,transpose(str2%a(a,a(1):))
end subroutine
