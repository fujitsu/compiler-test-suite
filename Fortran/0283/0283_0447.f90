integer :: arr(5,5) = 1

i = 1
j =2
arr(2,2) = 10
arr(3,3) =  20
associate(aa=>arr(j,:i+4))
i = i-1
j = j-1
IF(aa(2) .EQ. 10 .AND. arr(1,2) .EQ. 1) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF
end associate
end
