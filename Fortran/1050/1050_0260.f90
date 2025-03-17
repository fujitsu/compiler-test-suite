subroutine sub_0(b)
    integer,dimension(999) :: b

    b=2
    print *,b(1)
    print *,"test"
end subroutine sub_0

program main
  integer,dimension(999) :: b

  print *,"test"
  call sub_0(b)

  call sub_1()
  print *,"ok"
contains
  subroutine sub_1
    integer :: i
    integer,dimension(1000) :: a
      
!$OMP PARALLEL
    do i=1,1000
       a(i) = i
    end do
!$OMP END PARALLEL
    print *,a(1)
  end subroutine sub_1
end program main


