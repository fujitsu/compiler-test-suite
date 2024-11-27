type z
  integer,allocatable::za(:)
end type
type(z),allocatable::a(:),b(:)
integer,allocatable::pp(:),qq(:)

  allocate(a(10),b(10))
  allocate(pp(10),qq(10))
  pp=(/1,2,3,4,5,6,7,8,9,0/)
  qq=(/1,2,0,4,5,0,7,8,0,0/)

  where(pp.eq.0)
   a=z((/pp(1)/))
   where(qq.eq.0)
    b=a
   endwhere
   a=a
  elsewhere(pp.eq.1)
   a=z((/pp(2)/))
   where(qq.eq.1)
    b=a
   endwhere
   a=a
  elsewhere(pp.eq.2)
   a=z((/pp(3)/))
   where(qq.eq.2)
    b=a
   endwhere
   a=a
  elsewhere(pp.eq.3)
   a=z((/pp(4)/))
   where(qq.eq.3)
    b=a
   endwhere
   a=a
  elsewhere(pp.eq.4)
   a=z((/pp(5)/))
   where(qq.eq.4)
    b=a
   endwhere
   a=a
  elsewhere(pp.eq.5)
   a=z((/pp(6)/))
   where(qq.eq.5)
    b=a
   endwhere
   a=a
  elsewhere(pp.eq.6)
   a=z((/pp(7)/))
   where(qq.eq.6)
    b=a
   endwhere
   a=a
  elsewhere(pp.eq.7)
   a=z((/pp(8)/))
   where(qq.eq.7)
    b=a
   endwhere
   a=a
  elsewhere(pp.eq.8)
   a=z((/pp(9)/))
   where(qq.eq.8)
    b=a
   endwhere
   a=a
  elsewhere(pp.eq.9)
   a=z((/pp(10)/))
   where(qq.eq.9)
    b=a
   endwhere
   a=a
  end where

  deallocate(pp,qq)

  if (.not.allocated(a(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(2)%za)) write(6,*) "NG"
  if (.not.allocated(a(3)%za)) write(6,*) "NG"
  if (.not.allocated(a(4)%za)) write(6,*) "NG"
  if (.not.allocated(a(5)%za)) write(6,*) "NG"
  if (.not.allocated(a(6)%za)) write(6,*) "NG"
  if (.not.allocated(a(7)%za)) write(6,*) "NG"
  if (.not.allocated(a(8)%za)) write(6,*) "NG"
  if (.not.allocated(a(9)%za)) write(6,*) "NG"
  if (.not.allocated(a(10)%za)) write(6,*) "NG"
  if (size(a(1)%za)/=1) write(6,*) "NG"
  if (size(a(2)%za)/=1) write(6,*) "NG"
  if (size(a(3)%za)/=1) write(6,*) "NG"
  if (size(a(4)%za)/=1) write(6,*) "NG"
  if (size(a(5)%za)/=1) write(6,*) "NG"
  if (size(a(6)%za)/=1) write(6,*) "NG"
  if (size(a(7)%za)/=1) write(6,*) "NG"
  if (size(a(8)%za)/=1) write(6,*) "NG"
  if (size(a(9)%za)/=1) write(6,*) "NG"
  if (size(a(10)%za)/=1) write(6,*) "NG"
  if (any(a(1)%za/=(/2/))) write(6,*) "NG"
  if (any(a(2)%za/=(/3/))) write(6,*) "NG"
  if (any(a(3)%za/=(/4/))) write(6,*) "NG"
  if (any(a(4)%za/=(/5/))) write(6,*) "NG"
  if (any(a(5)%za/=(/6/))) write(6,*) "NG"
  if (any(a(6)%za/=(/7/))) write(6,*) "NG"
  if (any(a(7)%za/=(/8/))) write(6,*) "NG"
  if (any(a(8)%za/=(/9/))) write(6,*) "NG"
  if (any(a(9)%za/=(/0/))) write(6,*) "NG"
  if (any(a(10)%za/=(/1/))) write(6,*) "NG"
  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (.not.allocated(b(4)%za)) write(6,*) "NG"
  if (.not.allocated(b(5)%za)) write(6,*) "NG"
  if (.not.allocated(b(7)%za)) write(6,*) "NG"
  if (.not.allocated(b(8)%za)) write(6,*) "NG"
  if (.not.allocated(b(10)%za)) write(6,*) "NG"
  if (size(b(1)%za)/=1) write(6,*) "NG"
  if (size(b(2)%za)/=1) write(6,*) "NG"
  if (size(b(4)%za)/=1) write(6,*) "NG"
  if (size(b(5)%za)/=1) write(6,*) "NG"
  if (size(b(7)%za)/=1) write(6,*) "NG"
  if (size(b(8)%za)/=1) write(6,*) "NG"
  if (size(b(10)%za)/=1) write(6,*) "NG"
  if (any(b(1)%za/=(/2/))) write(6,*) "NG"
  if (any(b(2)%za/=(/3/))) write(6,*) "NG"
  if (any(b(4)%za/=(/5/))) write(6,*) "NG"
  if (any(b(5)%za/=(/6/))) write(6,*) "NG"
  if (any(b(7)%za/=(/8/))) write(6,*) "NG"
  if (any(b(8)%za/=(/9/))) write(6,*) "NG"
  if (any(b(10)%za/=(/1/))) write(6,*) "NG"

 print *,'pass'
end
