real,pointer::a
real,target:: a1
integer,pointer::b(:,:)
integer,target:: b1(10,10)
type t
 integer       t1
 integer,pointer::t2
end type
type(t)::c1,c2

allocate(a,b(10,10))
a=1.0
b=2.0
if(a /= 1.0)print*,'ng1'
if(b(10,10) /= 2.0 )print*,'ng2'
deallocate(a,b)

a1=1.0
b1=2.0
a=>a1
b=>b1
if(a /= 1.0)print*,'ng3'
if(b(10,10) /= 2.0 )print*,'ng4'

c1%t1=-1
allocate(c1%t2)
c1%t2=-2
c2=c1
if(c2%t1 /= -1)print*,'ng5'
if(c2%t2 /= -2)print*,'ng6'

print*,'pass'
end
