type z
  integer,allocatable,dimension(:)::za
end type
type(z),allocatable,dimension(:)::a

  allocate(a(4))
  a(1)=z((/1,2/))
  a(2)=z((/1,2,3/))
  a(3)=z((/1,2,3,4/))
  a(4)=z((/1,2,3,4,5/))
  a(1:2)=a(1:2)
    if (.not.allocated(a(1)%za)) write(6,*) "NG"
    if (.not.allocated(a(2)%za)) write(6,*) "NG"
    if (.not.allocated(a(3)%za)) write(6,*) "NG"
    if (.not.allocated(a(4)%za)) write(6,*) "NG"
    if (size(a(1)%za)/=2) write(6,*) "NG"
    if (size(a(2)%za)/=3) write(6,*) "NG"
    if (size(a(3)%za)/=4) write(6,*) "NG"
    if (size(a(4)%za)/=5) write(6,*) "NG"
    if (any(a(1)%za/=(/1,2/))) write(6,*) "NG"
    if (any(a(2)%za/=(/1,2,3/))) write(6,*) "NG"
    if (any(a(3)%za/=(/1,2,3,4/))) write(6,*) "NG"
    if (any(a(4)%za/=(/1,2,3,4,5/))) write(6,*) "NG"
  a(1:3:2)=a(2:4:2)
    if (.not.allocated(a(1)%za)) write(6,*) "NG"
    if (.not.allocated(a(2)%za)) write(6,*) "NG"
    if (.not.allocated(a(3)%za)) write(6,*) "NG"
    if (.not.allocated(a(4)%za)) write(6,*) "NG"
    if (size(a(1)%za)/=3) write(6,*) "NG"
    if (size(a(2)%za)/=3) write(6,*) "NG"
    if (size(a(3)%za)/=5) write(6,*) "NG"
    if (size(a(4)%za)/=5) write(6,*) "NG"
    if (any(a(1)%za/=(/1,2,3/))) write(6,*) "NG"
    if (any(a(2)%za/=(/1,2,3/))) write(6,*) "NG"
    if (any(a(3)%za/=(/1,2,3,4,5/))) write(6,*) "NG"
    if (any(a(4)%za/=(/1,2,3,4,5/))) write(6,*) "NG"
  a(4:1:-3)=a(2:3:1)
    if (.not.allocated(a(1)%za)) write(6,*) "NG"
    if (.not.allocated(a(2)%za)) write(6,*) "NG"
    if (.not.allocated(a(3)%za)) write(6,*) "NG"
    if (.not.allocated(a(4)%za)) write(6,*) "NG"
    if (size(a(1)%za)/=5) write(6,*) "NG"
    if (size(a(2)%za)/=3) write(6,*) "NG"
    if (size(a(3)%za)/=5) write(6,*) "NG"
    if (size(a(4)%za)/=3) write(6,*) "NG"
    if (any(a(1)%za/=(/1,2,3,4,5/))) write(6,*) "NG"
    if (any(a(2)%za/=(/1,2,3/))) write(6,*) "NG"
    if (any(a(3)%za/=(/1,2,3,4,5/))) write(6,*) "NG"
    if (any(a(4)%za/=(/1,2,3/))) write(6,*) "NG"
  a(4:3:-1)=a(1:2:1)
    if (.not.allocated(a(1)%za)) write(6,*) "NG"
    if (.not.allocated(a(2)%za)) write(6,*) "NG"
    if (.not.allocated(a(3)%za)) write(6,*) "NG"
    if (.not.allocated(a(4)%za)) write(6,*) "NG"
    if (size(a(1)%za)/=5) write(6,*) "NG"
    if (size(a(2)%za)/=3) write(6,*) "NG"
    if (size(a(3)%za)/=3) write(6,*) "NG"
    if (size(a(4)%za)/=5) write(6,*) "NG"
    if (any(a(1)%za/=(/1,2,3,4,5/))) write(6,*) "NG"
    if (any(a(2)%za/=(/1,2,3/))) write(6,*) "NG"
    if (any(a(3)%za/=(/1,2,3/))) write(6,*) "NG"
    if (any(a(4)%za/=(/1,2,3,4,5/))) write(6,*) "NG"
  a(2:3:1)=a(4:1:-3)
    if (.not.allocated(a(1)%za)) write(6,*) "NG"
    if (.not.allocated(a(2)%za)) write(6,*) "NG"
    if (.not.allocated(a(3)%za)) write(6,*) "NG"
    if (.not.allocated(a(4)%za)) write(6,*) "NG"
    if (size(a(1)%za)/=5) write(6,*) "NG"
    if (size(a(2)%za)/=5) write(6,*) "NG"
    if (size(a(3)%za)/=5) write(6,*) "NG"
    if (size(a(4)%za)/=5) write(6,*) "NG"
    if (any(a(1)%za/=(/1,2,3,4,5/))) write(6,*) "NG"
    if (any(a(2)%za/=(/1,2,3,4,5/))) write(6,*) "NG"
    if (any(a(3)%za/=(/1,2,3,4,5/))) write(6,*) "NG"
    if (any(a(4)%za/=(/1,2,3,4,5/))) write(6,*) "NG"

 print *,'pass'
end
