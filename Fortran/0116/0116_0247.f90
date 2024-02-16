!

program main
  integer,parameter::n=50
  type pp
    real(8),dimension(:,:,:),pointer:: p
  end type pp
  type(pp), target :: t(n)
  type(pp), dimension(:),pointer :: array
  integer,parameter :: ans=6375000

  array=>t
  do i = 1, n
    allocate(array(i)%p(n,n,n))
    array(i)%p=i
  end do

  call sub_pointer_array(array,n)

  if (int(sum(array(n)%p)) .eq. ans) then
    print *,"ok: sum(array) = ",sum(array(n)%p)
  else
    print *,"ng: sum(array) = ",sum(array(n)%p)
  endif

  do i = 1, n
    deallocate(array(i)%p)
  end do

  contains
  subroutine sub_pointer_array(array,n)
  type(pp),dimension(:) :: array
    do l=1,n
      do k=1,n
        do j=1,n
          do i=1,n
            array(l)%p(i,j,k) = array(l)%p(i,j,k) + 1._8
          enddo
        enddo
      enddo
    enddo
  end subroutine sub_pointer_array
end program
