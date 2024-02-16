#define N 256

program main
  integer(kind=4),dimension(N) :: a
  real(kind=2) :: res,m_num

  res = 0._8
  call init(a,res)
  do i=1,2
     m_num = 0._8
     call test(a,m_num)
  enddo
  if(m_num .ne. res) then
     print *, "NG"
  endif
  print *, "OK"
end program main

subroutine init(a,res)
  integer(kind=4),dimension(1:N) :: a
  real(kind=2) :: res
  do i=1,N
     a(i) = i
     if ( i .gt. N/2 ) then
        res = res + 2._8
     endif
  enddo
end subroutine init

subroutine test(a, m_num)
  integer(kind=4), dimension(N) :: a
  real(kind=2) :: m_num
  do i=1,N
      if (a(i) .gt. N/2) then 
         m_num = m_num + 2
      endif
  enddo
end subroutine test
