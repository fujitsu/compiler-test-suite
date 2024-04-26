subroutine sub1
  print *, "OKa";  print *, "OKb";
  print *, "OKc";
end subroutine sub1

subroutine sub2 (val)
  integer i, val
  do i=1,20
     val = val+1
  end do
  print *, "OK2"
end subroutine sub2

subroutine sub3
     print  *,  "OK3"
end subroutine sub3

program main
  integer val
  call sub1
  val=100
  call sub2(val)
  if (val .eq. 120)  then; print *, "OK"; endif
  if (val .ne. 120)  then; print *, "NG"; endif
  call  sub3
end program main
