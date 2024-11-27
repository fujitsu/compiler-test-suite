type ty1
  integer,allocatable:: arr(:)
end type
type ty2
  type(ty1) :: sss1(2)
end type
type(ty2) :: str

str=ty2((/(ty1((/1/)),i=1,2)/))
if (any(str%sss1(1)%arr/=1))write(6,*) "NG"
if (any(str%sss1(2)%arr/=1))write(6,*) "NG"
print *,'pass'

end

