!

program main
  integer,parameter::n=100
  type pp
    real(8),pointer:: p
  end type pp
  type(pp), dimension(n) :: array
  integer,parameter :: ans=5150
  real(8) :: anssum

!  allocate(array(n))
  do i = 1, n
    allocate(array(i)%p)
    array(i)%p=i
  end do

  call sub_pointer_array(array,n)

  anssum=0
  do i=1,n
    anssum = anssum + array(i)%p
  enddo

  if (anssum .eq. ans) then
    print *,"ok: sum(array) = ",anssum
  else
    print *,"ng: sum(array) = ",anssum
  endif

  do i = 1, n
!    print *,array(i)%p
    deallocate(array(i)%p)
  end do

  contains
  subroutine sub_pointer_array(array,n)
  type(pp),dimension(:) :: array
    do j=1,n
!      do i=1,n
        array(j)%p = array(j)%p + 1._8
!      enddo
    enddo
  end subroutine sub_pointer_array
end program
