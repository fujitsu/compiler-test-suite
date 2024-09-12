subroutine s1
character(3),allocatable::a(:)

allocate(a(2:5))
a(2:5)=['123','456','789','abc']
a=a(5:3:-1)
if (any(lbound(a)/=1))print *,201,lbound(a)
if (any(shape(a)/=3))print *,202
if (a(1)/='abc')print *,203,a(1)
if (a(2)/='789')print *,204,a(2)
if (a(3)/='456')print *,205,a(3)
end
subroutine s2
integer,allocatable::a(:)

allocate(a(2:5))
a(2:5)=[1,2,3,4]
a=a(5:3:-1)
if (any(lbound(a)/=1))print *,1201,lbound(a)
if (any(shape(a)/=3))print *,1202
if (a(1)/=4)print *,1203,a(1)
if (a(2)/=3)print *,1204,a(2)
if (a(3)/=2)print *,1205,a(3)
end
call s1
call s2
print *,'pass'
end
