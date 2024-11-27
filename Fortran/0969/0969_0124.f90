interface ty01
 function ifunc01(if01_arg01, if01_arg02) result(irst01)
  integer :: if01_arg01
  integer :: if01_arg02
  integer :: irst01
 end function
end interface

type ty01
 integer :: i01
 integer :: i02
 integer :: i03
end type

integer :: i
i = 1

print *,ty01(((((((((((((((+i)))))))))))))), i, (((((((((((ifunc01(1, 2) + ifunc01(1, 2 + ifunc01(1, int(((1.0, 2.0)))))))))))))))))
print *,ty01(((((((((((((((+i)))))))))))))), i, (((((((((((ty01(1, 2) + ty01(1, 2 + ty01(1, int(((1.0, 2.0)))))))))))))))))
print *,ty01(((((((((((+i)))))))))), i, (((((((ty01(1, 2) + ty01(1, 2 + ty01(1, int(((1.0, 2.0)))))))))))))


print *,ty01( i, i)
print *,ty01(+i, i)

end

function ifunc01(if01_arg01, if01_arg02) result(irst01)
 integer :: if01_arg01
 integer :: if01_arg02
 integer :: irst01
 irst01 = if01_arg01 + if01_arg02
end function
