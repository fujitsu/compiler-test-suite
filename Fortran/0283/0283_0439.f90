integer :: arr(5,5)

i = 2
j = 2
arr(2,2) = 10
arr(3,3) =  20

associate(aa=>arr(i,int(j)))
i = i+1
j = j+1
IF(aa .EQ. 10) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF
end associate
end
