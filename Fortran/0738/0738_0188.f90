integer(4),dimension(3)::b
integer(4),dimension(2)::c

  b=(/1,2,3/)
  c=(/4,5/)
  call sub(b,3,c,2)

 print *,'pass'
end

subroutine sub(b,i1,c,i2)
  type z
    integer(4),allocatable,dimension(:)::za
  end type
  type y
    integer(4),allocatable,dimension(:)::ya
    type (z)                           ::yt
  end type
  type (y)   a
  integer(4),dimension(i1)::b
  integer(4),dimension(i2)::c

    a=y(b+1,z(c-1))

    if (.not.allocated(a%ya)) write(6,*) "NG"
    if (.not.allocated(a%yt%za)) write(6,*) "NG"
    if (size(a%ya)/=3) write(6,*) "NG"
    if (size(a%yt%za)/=2) write(6,*) "NG"
    if (any(a%ya/=(/2,3,4/))) write(6,*) "NG"
    if (any(a%yt%za/=(/3,4/))) write(6,*) "NG"

end
