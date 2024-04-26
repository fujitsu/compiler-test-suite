integer :: arr(5,9,7) = 2, brr(5,9,7) = 1, crr(5,9,7)

call sub(arr,5,7)

contains
subroutine sub(darr,n1,n2)
integer::darr(n1,9,n2)

associate(aa=>darr(:,:,:),bb=>brr(:,:,:),cc=>crr(:,:,:))
 cc = aa + bb
end associate

if(all(crr/=3)) print*,101

print*,'pass'
end subroutine
END
