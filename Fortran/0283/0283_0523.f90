integer,dimension(-6:-2,-1:4,-9:-1,-3:0) :: arr = 2, brr = 1, crr

call sub(arr,brr)

contains
subroutine sub(darr,darr2)
integer::darr(:,:,:,:),darr2(:,:,:,:)

associate(aa=>darr(:,:,:,:),bb=>darr2(:,:,:,:),cc=>crr(:,:,:,:))
 cc = aa + bb
end associate

if(all(crr/=3)) print*,101

print*,'pass'
end subroutine
END
