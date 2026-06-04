type ty1
integer :: var
end type
type(ty1) :: str
str=ty1(2)
associate(ia=>str)
block
integer :: arr(ia%var),jj
if (size(arr).ne.2) print *,'ng'
jj=ia%var
if (jj.ne.2) print *,'ng'
end block
end associate
print *,'pass'
end
