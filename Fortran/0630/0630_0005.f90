
program main
 use test
  real(8),dimension(10)  :: data1
  data data1/1,2,3,4,5,6,7,8,9,10/
  call sub1(data1,10,1)
end program main

module  test
 contains
 
 subroutine sub1(data1,n,k)
    real(8),dimension(10)  :: data1
    integer :: i

    do i = 1, n-3
       call sub2(data1(i) ,1)
       call sub2(data1(i + k),1 )
    enddo 
    return
  end subroutine sub1

  subroutine sub2(data1,m)
    real(8),dimension(3)  :: data1
    data1(m) = data1(m+1)
    call sub3(data1(3))
  end subroutine sub2

  subroutine sub3(data3)
  real(8)   :: data3
  print *,data3
  return
  end subroutine sub3
end module test
