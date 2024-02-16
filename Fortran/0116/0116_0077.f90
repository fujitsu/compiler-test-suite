!

program main
  integer,parameter::n=100
  type pp
    real(8),dimension(:),allocatable :: p
  end type pp
  type(pp) a
  integer,parameter :: ans=200

  allocate(a%p(n))
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
    do i=1,n
       a%p(i) = a%p(i) + 1._8
    enddo
  end subroutine sub_pointer_array
end program

