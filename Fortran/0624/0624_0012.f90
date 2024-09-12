subroutine s1
integer,allocatable::a(:)
integer,pointer    ::b(:)
integer,target     ::t(100)
t=[(k,k=1,100)]

allocate(a(2:5))
a=-1
b(4:)=>t(1:10:2)
a=b
if (any(lbound(a)/=4))print *,201,lbound(a)
if (any(shape(a)/=5))print *,202
if (a(4)/=1)print *,203
if (a(5)/=3)print *,204
deallocate(a)
allocate(a(2:5))
a=-1
b(4:)=>t(1:10:2)
a=b(:)
if (any(lbound(a)/=1))print *,1201,lbound(a)
if (any(shape(a)/=5))print *,1202
if (a(1)/=1)print *,1203
if (a(2)/=3)print *,1204
deallocate(a)
end
call s1
print *,'pass'
end
