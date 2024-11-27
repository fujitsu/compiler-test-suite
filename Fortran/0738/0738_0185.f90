type z
  integer(4),allocatable,dimension(:)::za
end type
type y
  integer(4),allocatable,dimension(:)::ya
  type (z)                           ::yt
end type
type (y)   a
integer(4),dimension(2)::b

  b=2
  a=y((/1,2,3/),z((/4,5/)))

  if (.not.allocated(a%ya)) write(6,*) "NG"
  if (.not.allocated(a%yt%za)) write(6,*) "NG"
  if (any(a%ya/=(/1,2,3/))) write(6,*) "NG"
  if (any(a%yt%za/=(/4,5/))) write(6,*) "NG"

 print *,'pass'
end
