subroutine test1 (val1, val2)
  implicit none
  real*8,dimension(1000)::val1, val2
  integer i

  do i=1,1000
     if (val1(i) > 1.0) then 
        if (val1(i) == 100.0) then
           val2(i) = val2(i) + 10
        else
           val2(i) = val2(i) + 20
        endif
     else
        val2(i) = val2(i) + 30        
     endif
  enddo

  do i=1,1000
     if (val1(i) /= 1.0) then
        if (val1(i) /= 2.0) then
           val2(i) = val2(i) + 10
        endif
     endif
  enddo
end subroutine test1

subroutine test2 (val1, val2)
  implicit none
  integer val1,val2
  
  if (val1 < 1 .and. val2 < 1) then
     print *, "NG2"
  endif

  if (val1 >= 1 .and. val2 >= 1) then
     print *, "NG2"
  endif

  if (val1 > 1 .or. val2 > 1) then
     print *, "NG2"
  endif

  if (val1 < 1 .or. val2 < 1) then
     print *, "OK2"
  endif
  
end subroutine test2

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
     print *, "NG1"
  else
     print *, "OK1"
  end if

  call test2(1,0)
  
end program main
