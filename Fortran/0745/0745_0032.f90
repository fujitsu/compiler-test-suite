type ty1
  integer a(10,20)
end type
type (ty1) :: str1(2)

  integer ax(20,10)

str1(1)%a=2
ax = transpose(str1(1)%a)
if(any(ax/=2))print *,'error'
print *,'pass'
end
