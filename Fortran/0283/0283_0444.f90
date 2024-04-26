integer :: arr(5,5)

i = 2
j =2
arr(2,2) = 10
arr(3,3) =  20
associate(aa=>arr(:i,j))
i = i+1
j = j+1
IF(aa(2) .EQ. 10 .AND. arr(3,3) .EQ. 20) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF
end associate
end
