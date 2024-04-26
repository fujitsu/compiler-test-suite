subroutine test1 (val1, val2)
  implicit none
  real*8,dimension(1000)::val1, val2
  integer i
  
  do i=1,1000
     if (val1(i) == 1.0) then
        val2(i) = val2(i) + 10
     else
        val2(i) = val2(i)
     endif
  enddo

  do i=1,1000
     if (val1(i) /= 1.0) then
        val2(i) = val2(i) + 10
     else
        val2(i) = val2(i)
     endif
  enddo

  do i=1,1000
     if (val1(i) < 100.0) then
        val2(i) = val2(i) + 10
     else
        val2(i) = val2(i)
     endif
  enddo

  do i=1,1000
     if (val1(i) <= 100.0) then
        val2(i) = val2(i) + 10
     else
        val2(i) = val2(i)
     endif
  enddo
  
  do i=1,1000
     if (val1(i) > 200.0) then
        val2(i) = val2(i) + 10
     else
        val2(i) = val2(i)
     endif
  enddo

  do i=1,1000
     if (val1(i) >= 200.0) then
        val2(i) = val2(i) + 10
     else
        val2(i) = val2(i)
     endif
  enddo
end subroutine test1

subroutine test2 (val1)
  implicit none
  integer val1
  
  if (val1 .lt. 1) then
     print *, "NG"
  endif

  if (val1 .le. 1) then
     print *, "OK"
  endif

  if (val1 .gt. 1) then
     print *, "NG"
  endif

  if (val1 .ge. 1) then
     print *, "OK"
  endif
end subroutine test2

subroutine test3 (str1,str2)
  implicit none  
  character(len=5,kind=1) :: str1, str2

  if (str1 .ne. str2) then
     print *, "OK"
  else
     print *, "NG"
  endif

  if (str1 .eq. str2) then
     print *, "NG"
  else
     print *, "OK"
  endif

  if (str1 .lt. str2) then
     print *, "OK"
  else
     print *, "NG"
  endif

  if (str1 .le. str2) then
     print *, "OK"
  else
     print *, "NG"
  endif

  if (str1 .gt. str2) then
     print *, "NG"
  else
     print *, "OK"
  endif

  if (str1 .ge. str2) then
     print *, "NG"
  else
     print *, "OK"
  endif

end subroutine test3

program main
  implicit none
  real*8,dimension(1000)::val1, val2
  character(len=5,kind=1) :: str1, str2
  
  integer i

  val2=0.0
  
  do i=1,1000
     if (i > 500) then
        val1(i) = 1
     else 
        val1(i) = i
     endif
  enddo

  call test1(val1,val2)
  if (val2(1000) .ne. 30.0) then
     print *, "NG"
  else
     print *, "OK"
  end if

  call test2(1)

  str1="abcde"
  str2="qwert"
  call test3(str1, str2)
end program main
