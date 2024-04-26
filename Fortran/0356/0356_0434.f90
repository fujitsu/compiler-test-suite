module mymod
  type st1
     real(8) dxmax(2)
  end type st1
  type(st1) :: str
end module

program main
  use mymod
  real(8) dx1(10)/1,8,2,3,7,6,5,4,1,1/
  real(8) dx2(10)/1,2,3,4,8,7,6,5,1,9/
  str%dxmax(1) = 0
  str%dxmax(2) = 0
  call sub(dx1,dx2,10)
  if (str%dxmax(1).ne.8 .or. str%dxmax(2).ne.9) then
     write(6,*) "NG",str%dxmax
  else
     write(6,*) "ok"
  endif
end program

subroutine sub(dx1,dx2,n)
  use mymod
  real(8) dx1(n),dx2(n)
  type st2
     real(8) TMP1,TMP2
  end type st2
  type(st2) :: str2
  do j = 1, n
     str2%TMP1 = dx1(j)
     if (str2%TMP1 > str%dxmax(1)) str%dxmax(1) = str2%TMP1
     str2%TMP2 = dx2(j)
     if (str2%TMP2 > str%dxmax(2)) str%dxmax(2) = str2%TMP2
  end do
  return
end subroutine sub
