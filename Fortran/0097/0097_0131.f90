integer::a(5) =[1,2,3,4,5]
call sub(a(1:5:1))
if(any(a.ne.[11,12,13,14,15]))print*,"101",a
print*,"pass"
contains
subroutine sub(t)
integer::t(:)
call sub2(t)
end subroutine
subroutine sub2(b)
integer,contiguous,optional::b(:)

if(present(b))then
if(loc(b).ne.loc(a))print*,"101"
b=b+10
endif
end subroutine
end
