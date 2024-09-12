
program main
 use test
  real(8),dimension(8)  :: data1
  data data1/1,2,3,4,5,6,7,8/
  call sub1(data1,2)
end program main

module  test
 contains
 
 subroutine sub1(data1,n)
    real(8),dimension(8)  :: data1
    integer :: i

    do i = 1, n
       call sub2(data1(1))
       call sub2(data1(1))
    enddo 
    return
  end subroutine sub1

  subroutine sub2(data1)
    real(8),dimension(2)  :: data1

    data1(2) = data1(1)
    call sub3(data1(1))
  end subroutine sub2

  subroutine sub3(data3)
  real(8)   :: data3
  print *,data3
  return
  end subroutine sub3
end module test
