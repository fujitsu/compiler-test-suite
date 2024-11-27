type ty1
 integer i
end type
type (ty1) :: i,ifun
i=ifun(i)
end
function ifun(i)
type ty1
 integer i
end type
type (ty1) :: i,ifun
ifun=i
end
