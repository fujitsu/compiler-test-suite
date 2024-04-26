integer :: arr(5)

i = 2
arr(2) = 10
arr(3) =  20
associate(aa=>arr(i:i+i:i-1))
i = i+1
SELECT CASE(aa(1))
  CASE(10) 
  IF(arr(3) .EQ. 20) PRINT*,'pass'
END SELECT
end associate
end
