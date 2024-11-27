integer :: arr(10)=12
integer(8) ,parameter :: RRR=1
do j=1,10
arr(j) = j
end do
j=RRR
if (arr(1).ne.1) print *,'err'
print *,'pass'
end
