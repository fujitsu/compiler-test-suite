module mod
  type z
    integer(4),allocatable,dimension(:)::za
  end type
  type y
    integer(4),allocatable,dimension(:)::ya
    type (z)                           ::yt
  end type
end module

program main
  use mod
  integer(2),dimension(3)::b
  integer(4),dimension(2)::c
  type (y)   a(2)

  b=(/1,2,3/)
  c=(/4,5/)

  call sub(a(2),b,3,c,2)

  if (.not.allocated(a(2)%ya)) write(6,*) "NG"
  if (.not.allocated(a(2)%yt%za)) write(6,*) "NG"
  if (size(a(2)%ya)/=3) write(6,*) "NG"
  if (size(a(2)%yt%za)/=2) write(6,*) "NG"
  if (any(a(2)%ya/=(/2,3,4/))) write(6,*) "NG"
  if (any(a(2)%yt%za/=(/3,4/))) write(6,*) "NG"

 print *,'pass'
end

subroutine sub(a,b,i1,c,i2)
  use mod
  type (y)   a
  integer(2),dimension(i1)::b
  integer(4),dimension(i2)::c

    a=y(b+1,z(c-1))

end
