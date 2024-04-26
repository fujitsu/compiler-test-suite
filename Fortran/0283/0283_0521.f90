integer :: arr(1:5,1:9,1:7) = 2, brr(1:4,1:5,1:7) = 1, crr(1:4,1:5)

call sub(arr)

contains
subroutine sub(darr)
integer::darr(1:4,1:5,*)

associate(aa=>darr(:,:,1),bb=>brr(:,:,2))
 crr = aa + bb
end associate

if(all(crr/=3)) print*,101

print*,'pass'
end subroutine
END
