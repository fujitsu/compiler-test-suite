module m1
 integer,pointer::a=>null(),b(:)=>null()
end module

use m1
integer,pointer::c,d(:)
integer,target::e,f(1)
type g
 integer,pointer::g1
end type
type(g)::h(10)
if(associated(a))      print*,'ng1'
if(associated(b))      print*,'ng1'
do i=1,10
  h(i)%g1=>e
  a=>e
  b=>f
  c=>e
  d=>f
end do
do i=1,10
  h(i)%g1=>null()
  a=>null()
  b=>null()
  c=>null()
  d=>null()
end do
do i=1,10
  if(associated(h(i)%g1))print*,'ng2'
  if(associated(a))      print*,'ng2'
  if(associated(b))      print*,'ng2'
  if(associated(c))      print*,'ng2'
  if(associated(d))      print*,'ng2'
end do
do i=1,10
  h(i)%g1=>e
  a=>e
  b=>f
  c=>e
  d=>f
end do
forall (i=1:10)
  h(i)%g1=>null()
  a=>null()
  b=>null()
  c=>null()
  d=>null()
end forall
do i=1,10
  if(associated(h(i)%g1))print*,'ng3'
  if(associated(a))      print*,'ng3'
  if(associated(b))      print*,'ng3'
  if(associated(c))      print*,'ng3'
  if(associated(d))      print*,'ng3'
end do
print*,'pass'
end

