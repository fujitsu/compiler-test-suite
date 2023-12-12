integer, parameter :: arr(3,4) = reshape([0,3,1,-5,4,5,7,-1,6,7,2,7],[3,4])
integer :: jj(4) =findloc(arr,7,1              ,KIND = 8)
print *,'OK'
end
