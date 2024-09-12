type ty1
 integer :: a01
end type
type (ty1) :: str2(2)
data str2(1)%a01 /z'2'/
print *,'pass'
end

