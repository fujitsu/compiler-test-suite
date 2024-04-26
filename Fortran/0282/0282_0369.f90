program main

integer,parameter :: M(3,3) = reshape((/0,9,0,0,0,0,0,0,7/),(/3,3/))
logical, parameter :: l(3,3) = .false.
integer :: res(11) = PACK (M, l , VECTOR = (/ 2,0,9,0,0,0,0,0,0,7,100 /))
print*, res
print *, PACK (M, l, VECTOR = (/ 2,0,9,0,0,0,0,0,0,7,100 /))
print *, size(PACK (M,l , VECTOR = (/ 2,0,9,0,0,0,0,0,0,7,100 /)))
End


