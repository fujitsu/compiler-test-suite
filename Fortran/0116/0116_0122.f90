
program main
  integer,parameter::n=100
  type pp
    real(8),dimension(:,:),pointer :: p
  end type pp
  type(pp),pointer :: a
  integer,parameter :: ans=505000

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
    do j=1,n
      do i=2,n
        a%p(i,j) = a%p(i-1,j) + 1._8
      enddo
    enddo
  end subroutine sub_pointer_array
end program

