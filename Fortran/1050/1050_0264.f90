
subroutine sub2(c,d)
  integer,dimension(1000) :: c
  integer,dimension(500) :: d
  integer :: i,j
!$OMP PARALLEL DO
    do i=1,1000
      c(i) = i
    end do
!$OMP END PARALLEL DO
!$OMP PARALLEL DO
    do j=1,500
      d(j) = j
    end do
!$OMP END PARALLEL DO

end subroutine sub2

program main
  integer,dimension(1000) :: aa
  integer,dimension(500) :: bb

  print *,"test"

  call subsubsubsubsub()
  call sub2(aa,bb)

  print *,aa(1),bb(1)
  print *,"ok"
contains
  subroutine subsubsubsubsub
    integer :: i,j
    integer,dimension(1000) :: a
    integer,dimension(500) :: b

!$OMP PARALLEL 
!$OMP DO     
    do i=1,1000
       a(i) = i
    end do
!$OMP END DO 
!$OMP DO
    do j=1,500
       b(j) = j
    end do
!$OMP END DO
!$OMP END PARALLEL 
    print *,a(1),b(2)
  end subroutine subsubsubsubsub
end program main
