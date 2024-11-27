call sub()
print *,'pass'
contains

  subroutine sub()
  type z
    integer(4),allocatable:: za(:)
  end type
  type y
    type(z),allocatable :: yy(:)
  end type
  type(y) :: a(3)

    forall (k=1:3:1)
      a(k)=y( (/ (z((/1/)),i=1,2) /) )
    endforall

    do i=1,3
      do j=1,2
        if (.not.allocated(a(i)%yy(j)%za)) write(6,*) "NG"
        if (any(a(i)%yy(j)%za/=(/1/))) write(6,*) "NG"
        deallocate(a(i)%yy(j)%za)
      enddo
    enddo
  end subroutine

end
