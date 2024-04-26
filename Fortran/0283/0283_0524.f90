integer :: arr(-2:2,-9:-1,-7:-1) = 2, brr(-5:-1,-9:-1,-8:-2) = 1, crr(-6:-2,-10:-2,-7:-1)

call sub(arr,-5,-7)

contains
subroutine sub(darr,n1,n2)
integer::darr(n1+3:2,-9:-1,n2:-1)
associate(aa=>darr(:,:,:),bb=>brr(:,:,:),cc=>crr(:,:,:))
 cc = aa + bb
end associate

if(all(crr/=3)) print*,101

print*,'pass'
end subroutine
END
