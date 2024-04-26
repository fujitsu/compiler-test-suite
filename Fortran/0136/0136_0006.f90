integer(1),allocatable,dimension(:)::a
integer(2),allocatable,dimension(:)::b
integer(2)::bb(4)
allocate(a(4),source=(/1_1,2_1,3_1,4_1/))
bb=10
allocate(b(4),source=bb)
if(any(a/=[integer(kind=1)::1,2,3,4])) print *,'err1'
if(any(b/=[integer*2::(10,j=1,4)])) print *,'err2'
print *,'pass'
end
