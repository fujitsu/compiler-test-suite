program main

  print *,"test"

  call subsubs_ubsub_sub()

  print *,"ok"
contains
  subroutine subsubs_ubsub_sub
    integer :: i
    integer,dimension(1000) :: a

!$OMP PARALLEL
    do i=1,1000
       a(i) = i
    end do
!$OMP END PARALLEL
    print *,a(1)
  end subroutine subsubs_ubsub_sub
end program main
