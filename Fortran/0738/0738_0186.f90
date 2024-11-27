type z
  integer(4),allocatable,dimension(:)::za
end type
type y
  integer(4),allocatable,dimension(:)::ya
  type (z)                           ::yt
end type
type (y)   a
integer(4),dimension(3)::b
integer(4),dimension(2)::c

  b=(/1,2,3/)
  c=(/4,5/)
  a=y(b,z(c))

  if (.not.allocated(a%ya)) write(6,*) "NG"
  if (.not.allocated(a%yt%za)) write(6,*) "NG"
  if (size(a%ya)/=3) write(6,*) "NG"
  if (size(a%yt%za)/=2) write(6,*) "NG"
  if (any(a%ya/=(/1,2,3/))) write(6,*) "NG"
  if (any(a%yt%za/=(/4,5/))) write(6,*) "NG"

 print *,'pass'
end
