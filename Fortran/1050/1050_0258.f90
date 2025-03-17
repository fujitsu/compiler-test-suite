program main
  
  print *,"test"

  call sub_1()

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
    print *,"ok"
  end subroutine sub_1
end program main


