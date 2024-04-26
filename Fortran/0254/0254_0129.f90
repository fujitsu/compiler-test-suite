implicit none
logical(kind = 8 ) :: b
b=.true.
call sub(b)
contains
subroutine sub(bck)
  implicit none
  integer, dimension(5) :: a
  integer :: ad1(1)
  logical (kind=8) :: bck
  a=(/7,5,5,12,2/)
  ad1= minloc(array=a,mask=a>3,kind=4,back=bck)
  if(ad1(1).ne.3)print*,101
  print*,"pass"
end subroutine sub
end
