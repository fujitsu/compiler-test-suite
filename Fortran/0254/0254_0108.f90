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
  a=(/7,9,9,12,5/)
  ad1= maxloc(array=a,mask=a<10,kind=4,back=bck)
  if(ad1(1).ne.3)print*,101
  print*,"pass"
end subroutine sub
end
