integer :: arr(5)

i = 2
arr(2) = 10
arr(3) =  20

associate(aa=>arr((i)))
i = i+1
IF(aa .EQ. 10) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF
end associate
end
