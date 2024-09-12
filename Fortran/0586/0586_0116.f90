integer::a(5)
real::b(5)
integer::c(5)
complex::x
character*5::ch1,ch2(3)
real::r1
integer,pointer::ptr
integer,target::t1=30

type ty
 integer::aa
 integer::bb
end type

type(ty)::obj
data x,a(2),b(1:5:2),obj%bb,ch1(1:3),obj%aa,(c(i),i=1,2),ch2(1:3:2)(1:2),ch2(2)(1:2) ,ptr,r1 /(10,20),10,1.0,1.2,1.3,30,'abc',40,20,30,"aa","bb","ac",t1,10.0/

if(x.ne.(10,20))print*,"101"
if(a(2).ne.10)print*,"102"
if(b(1).ne.1.0)print*,"103"
if(b(3).ne.1.2)print*,"104"
if(b(5).ne.1.3)print*,"105"
if(ch1(1:3).ne."abc")print*,"116",ch1
if(obj%aa.ne.40)print*,"107",obj%aa
if(obj%bb.ne.30)print*,"108",obj%bb
if(c(1).ne.20)print*,"109"
if(c(2).ne.30)print*,"110"
if(ch2(1)(1:2).ne."aa")print*,"117",ch2(1)
if(ch2(3)(1:2).ne."bb")print*,"118",ch2(3)
if(ch2(2)(1:2).ne."ac")print*,"119",ch2(2)
if(associated(ptr).neqv..true.)print*,"108"
if(ptr.ne.30)print*,"109"
if(r1.ne.10.0)print*,"109"
print*,"PASS"
end
