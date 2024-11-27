   real, allocatable :: GRID(:,:,:,:)
  real, pointer :: INGRID(:,:,:,:,:)

  allocate ( INGRID(360,180,5,4,2), GRID(360,180,10,5) )
  nd=5
  do i = 1, nd
    call get_data ( ingrid)

    grid(:,:,i,:) = ingrid(:,:,:,1,1)

  end do
print *,'pass'
contains
subroutine get_data(a)
real,dimension(:,:,:,:,:)::a
a=1
end subroutine 
end
