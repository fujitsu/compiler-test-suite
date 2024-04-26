program main

integer,parameter :: M(3,3) = reshape((/0,9,0,0,0,0,0,0,7/),(/3,3/))
integer :: res(11) = PACK (M, .false. , VECTOR = (/ 2,0,9,0,0,0,0,0,0,7,100 /))

print*, res
print *, PACK (M, .false. , VECTOR = (/ 2,0,9,0,0,0,0,0,0,7,100 /))
print *, size(PACK (M, .false. , VECTOR = (/ 2,0,9,0,0,0,0,0,0,7,100 /)))

end


