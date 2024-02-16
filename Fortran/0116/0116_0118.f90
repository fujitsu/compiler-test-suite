!

program main
  integer,parameter::n=100
  type pp
    real(8),dimension(:,:),allocatable :: p
  end type pp
  type(pp),pointer :: a
  integer,parameter :: ans=12500

  allocate(a)
  allocate(a%p(n,n))
  a%p=1._8
  call sub_pointer_array(a,n)
  if (int(sum(a%p)) .eq. ans) then
    print *,"ok: sum(a) = ",sum(a%p)
  else
    print *,"ng: sum(a) = ",sum(a%p)
  endif
  deallocate(a%p)
  deallocate(a)

  contains
  subroutine sub_pointer_array(a,n)
  type(pp) a
    do j=2,n,2
      do i=2,n,2
        a%p(i,j) = a%p(i-1,j-1) + 1._8
      enddo
    enddo
  end subroutine sub_pointer_array
end program

