type ty1
 integer :: ii = 1
end type

type (ty1) :: tt

tt = ty1(ii = 1)


end
