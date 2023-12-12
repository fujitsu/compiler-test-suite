integer, parameter :: arr(1,1) = reshape([7],[1,1])
integer :: jj(1) =findloc(arr,7,1              ,KIND = 8)
print *,'OK'
end
