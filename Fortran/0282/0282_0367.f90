program main

integer,parameter :: M(3,3) = reshape((/0,9,0,0,0,0,0,0,7/),(/3,3/))
integer :: res(11) = PACK (M, .true. , VECTOR = (/ 2,0,9,0,0,0,0,0,0,7,100 /))

print*, res
print *, PACK (M, .true. , VECTOR = (/ 2,0,9,0,0,0,0,0,0,7,100 /))
print *, size(PACK (M, .true. , VECTOR = (/ 2,0,9,0,0,0,0,0,0,7,100 /)))

end

