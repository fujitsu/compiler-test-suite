integer :: arr(5,5)

i = 1
j =2
arr(2,2) = 10
arr(3,3) =  20
associate(aa=>arr(:i+4,j+1:))
i = i-1
j = j-1
IF(aa(3,1) .EQ. 20 .AND. arr(3,3) .EQ. 20) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF
end associate
end
