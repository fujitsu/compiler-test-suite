
program main
  integer,parameter::n=100
  type pp
    real(8),dimension(n) :: p
  end type pp
  type(pp), dimension(n) :: array
  integer,parameter :: ans=10000

  do i = 1, n
    array(i)%p=i
  end do

  call sub_pointer_array(array,n)

  if (int(sum(array(n)%p)) .eq. ans) then
    print *,"ok: sum(array) = ",sum(array(n)%p)
  else
    print *,"ng: sum(array) = ",sum(array(n)%p)
  endif

  contains
  subroutine sub_pointer_array(array,n)
  type(pp),dimension(:) :: array
    do j=2,n
      do i=2,n
        array(j)%p(i) = array(j-1)%p(i-1) + 1._8
      enddo
    enddo
  end subroutine sub_pointer_array
end program
