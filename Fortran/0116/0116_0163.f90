
program main
  integer,parameter::n=100
  type pp
    real(8),dimension(:,:,:),pointer :: p
  end type pp
  type(pp),target :: t
  type(pp),pointer :: a
  integer,parameter :: ans=2000000

  a=>t
  allocate(a%p(n,n,n))
  a%p=1._8
  call sub_pointer_array(a,n)
  if (int(sum(a%p)) .eq. ans) then
    print *,"ok: sum(a) = ",sum(a%p)
  else
    print *,"ng: sum(a) = ",sum(a%p)
  endif
  deallocate(a%p)

  contains
  subroutine sub_pointer_array(a,n)
  type(pp) a
  do k=1,n
    do j=1,n
      do i=1,n
        a%p(i,j,k) = a%p(i,j,k) + 1._8
      enddo
    enddo
  enddo
  end subroutine sub_pointer_array
end program

