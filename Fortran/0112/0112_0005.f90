type t
  sequence
  integer,pointer::a1
end type
type(t)::a(3)
allocate(a(1)%a1,a(2)%a1,a(3)%a1)
a(1)%a1=1; a(2)%a1=2; a(3)%a1=3
forall(i=2:3)
  a(i)%a1=>a(i-1)%a1
end forall
if(a(1)%a1 .ne. 1)print*,'ng'
if(a(2)%a1 .ne. 1)print*,'ng'
if(a(3)%a1 .ne. 1 .and. a(3)%a1 .ne. 2)print*,'ng'
print*,'pass'
end
