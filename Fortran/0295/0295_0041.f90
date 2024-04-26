subroutine s1(n)
integer,target::t1(2)
integer,pointer::p1(:),p2(:),p3(:)
integer,target,allocatable::t2(:)
integer,pointer::t3(:)
n1=1
p1=>t1
allocate(t2(2))
p2=>t2
allocate(t3(2))
p3=>t3
select case(n) 
case (2)
print *,t1(2)
print *,t2(2)
print *,t3(2)
case (3)
print *,t1(:)
print *,t2(:)
print *,t3(:)
case (4)
print *,t1(1:2)
print *,t2(1:2)
print *,t3(1:2)
case (5)
print *,t1(n1:2)
print *,t2(n1:2)
print *,t3(n1:2)
end select
if (.not.associated(p1,t1))print *,101
if (.not.associated(p2,t2))print *,102
if (.not.associated(p3,t3))print *,103
p1=>t1(:)
p2=>t2(:)
p3=>t3(:)
if (.not.associated(p1,t1(:)))print *,201
if (.not.associated(p2,t2(:)))print *,202
if (.not.associated(p3,t3(:)))print *,203
p1=>t1(n1:)
p2=>t2(n1:)
p3=>t3(n1:)
if (.not.associated(p1,t1(n1:)))print *,301
if (.not.associated(p2,t2(n1:)))print *,302
if (.not.associated(p3,t3(n1:)))print *,303
end
call s1(1)
print *,'pass'
end
