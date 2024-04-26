integer :: arr(5)

i = 2
arr(2) = 10
arr(3) =  20

associate(aa=>arr((fun(i) + 1)) , bb => aa)
i = i+1
IF(bb .EQ. 20) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF
end associate

contains

function fun(dd)
implicit none
integer :: dd,fun
fun = dd
end function

end
