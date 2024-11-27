type z
  integer,allocatable,dimension(:)::za
  integer,pointer    ,dimension(:)::zp
end type
type(z)::a(3)

  allocate(a(1)%za(1),a(2)%za(1),a(3)%za(1))
  allocate(a(1)%zp(1),a(2)%zp(1),a(3)%zp(1))

  a(1)%za=(/1/)
  a(2)%za=(/2/)
  a(3)%za=(/3/)
  a(1)%zp=(/1/)
  a(2)%zp=(/2/)
  a(3)%zp=(/3/)

  a(2:3)=a(1:2)

  if (.not.allocated(a(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(2)%za)) write(6,*) "NG"
  if (.not.allocated(a(3)%za)) write(6,*) "NG"
  if (.not.associated(a(1)%zp)) write(6,*) "NG"
  if (.not.associated(a(2)%zp)) write(6,*) "NG"
  if (.not.associated(a(3)%zp)) write(6,*) "NG"
  if (any(a(1)%za/=(/1/))) write(6,*) "NG"
  if (any(a(2)%za/=(/1/))) write(6,*) "NG"
  if (any(a(3)%za/=(/2/))) write(6,*) "NG"
  if (any(a(1)%zp/=(/1/))) write(6,*) "NG"
  if (any(a(2)%zp/=(/1/))) write(6,*) "NG"
  if (any(a(3)%zp/=(/2/))) write(6,*) "NG"

  a(2)%za=(/5.0/)
  a(2)%zp=(/5.0/)

  if (any(a(1)%za/=(/1/))) write(6,*) "NG"
  if (any(a(2)%za/=(/5/))) write(6,*) "NG"
  if (any(a(3)%za/=(/2/))) write(6,*) "NG"
  if (any(a(1)%zp/=(/5/))) write(6,*) "NG"
  if (any(a(2)%zp/=(/5/))) write(6,*) "NG"
  if (any(a(3)%zp/=(/2/))) write(6,*) "NG"

  print *,'pass'
end
