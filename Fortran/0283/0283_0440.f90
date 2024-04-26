integer :: arr(5,5)

i = 2
j = 2
arr(2,2) = 10
arr(3,3) =  20

associate(aa=>arr(i+1,int(j)+1))
i = i+1
j = j+1
SELECT CASE(aa)
  CASE(20)
  PRINT*,'pass'
END SELECT
end associate
end
