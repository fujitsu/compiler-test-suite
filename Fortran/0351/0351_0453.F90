program main
  integer(kind=4),dimension(64) :: a
  real(kind=4) :: res,m_num

  res = 0._4
  call init(a,res)
  do i=1,2
     m_num = 0._4
     call test(a,m_num)
  enddo
  if(m_num .ne. res) then
    print *, "NG"
  endif
  print *, "OK"
end program main

subroutine init(a,res)
  integer(kind=4),dimension(1:64) :: a
  real(kind=4) :: res
  integer(kind=8) :: i


  do i=1,64
     a(i) = 1
     res = res + 1._4
  enddo
end subroutine init


subroutine test(a, m_num)
  integer(kind=4), dimension(64) :: a
  real(kind=4) :: m_num
  integer(kind=8) :: i

  do i=1,64
      if (a(i) .lt. 64) then 
         m_num = m_num + 1._4
      endif
  enddo
end subroutine test
