integer :: arr(10)=12
integer(8) ,parameter :: RRR=111111111111111111_8
integer(8) ,parameter :: RRR2=111111111111111111_8
do j=1,10
arr(j) = j
end do
j=int(RRR)
if (arr(1).ne.1) print *,'err'
print *,'pass'
end
