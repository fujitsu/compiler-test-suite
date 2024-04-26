integer :: arr(5,5) = 1

i = 1
j =2
arr(2,2) = 10
arr(3,3) =  20
associate(aa=>arr(j:,:))
i = i-1
j = j-1
SELECT CASE(aa(1,2))
  CASE(10)
  IF(arr(1,2) .EQ. 1) PRINT*,'pass'
END SELECT
end associate
end
