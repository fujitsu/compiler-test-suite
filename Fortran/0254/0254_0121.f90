PROGRAM pro
  INTEGER :: a(2,3)
  integer:: d(2)
  logical:: bck
  a(1,1) = 3
  a(1,2) = 2
  a(1,3) = 3
  a(2,1) = 7
  a(2,2) = 7
  a(2,3) = 2
  bck=.true.
  call sub(a,d,bck)
  print*,"pass"
contains
subroutine sub(d1,d2,b)
  INTEGER,intent(in) :: d1(2,3)
  integer,intent(out) :: d2(2)
  logical,intent(in) :: b

  d2 = maxloc(array=d1,dim=2,back=b)
  if(d2(1).ne.3)print*,101
  if(d2(2).ne.2)print*,102
end subroutine
END PROGRAM
