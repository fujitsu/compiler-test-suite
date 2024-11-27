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
  integer(2),dimension(2)::c
  type (y)   a

  b=(/1,2,3/)
  c=(/4,5/)

  call sub(a,b,3,c,2)

  if (.not.allocated(a%ya)) write(6,*) "NG"
  if (.not.allocated(a%yt%za)) write(6,*) "NG"
  if (size(a%ya)/=3) write(6,*) "NG"
  if (size(a%yt%za)/=2) write(6,*) "NG"
  if (any(a%ya/=(/2,3,4/))) write(6,*) "NG"
  if (any(a%yt%za/=(/3,4/))) write(6,*) "NG"

 print *,'pass'
end

subroutine sub(a,b,i1,c,i2)
  use mod
  type (y)   a
  integer(2),dimension(i1)::b
  integer(2),dimension(i2)::c

    a=y(b+1,z(c-1))

end
