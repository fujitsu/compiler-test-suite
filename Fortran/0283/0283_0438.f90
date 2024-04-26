integer :: arr(5)

i = 1
arr(2) = 10
arr(3) =  20

associate(aa=>arr(i+1))
i = i+1
SELECT CASE(aa)
  CASE(10)
  PRINT*,'pass'
END SELECT
end associate
end
