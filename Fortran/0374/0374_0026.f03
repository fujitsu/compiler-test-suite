program main
    implicit none
    integer,allocatable :: a(:,:,:)
    integer :: i, total
    total = 0
    do i=1,10
      allocate(a(i,i*2,i*3))
      total = total+1
      deallocate(a)
    end do
    print *, 'pass'
end program
