program main
  integer(kind=4),dimension(64) :: a
  integer(kind=8) :: res,m_num
  integer(kind=8) :: i

  res = 0_8
  call init(a,res)
  do i=1,2
     m_num = 0_8
     call test(a,m_num)
  enddo
  if(m_num .ne. res) then
    print *, "NG"
  endif
  print *, "OK"
end program main

subroutine init(a,res)
  integer(kind=4),dimension(1:64) :: a
  integer(kind=8) :: res
  integer(kind=8) :: i

  do i=1,64
     a(i) = i
     if ( i .gt. 64/2 ) then
        res = res + 2
     endif
  enddo
end subroutine init


subroutine test(a, m_num)
  integer(kind=4), dimension(64) :: a
  integer(kind=8) :: m_num
  integer(kind=8) :: i

  do i=1,64
      if (a(i) .gt. 64/2) then 
         m_num = m_num + 2
      endif
  enddo
end subroutine test
