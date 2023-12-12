integer, parameter :: arr(3,2) = reshape([7,-1,6,7,2,7],[3,2])
integer :: jj(2) =findloc(arr,7,1              ,KIND = 8)
print *,'OK'
end
