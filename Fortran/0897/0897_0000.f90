subroutine sub(dmy)
integer, optional :: dmy
integer::ii(1)
integer ::  arr(7)
dmy=1
arr = (/1,2,3,4,5,6,7/)
ii = findloc(arr,value=9,DIM=dmy)
end subroutine
end
