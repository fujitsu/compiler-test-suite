integer,allocatable::a
integer,pointer::b
call sub(NULL(a),NULL(b))
call sub(NULL(a))
print*,"pass"
contains
subroutine sub(a,b)
integer,optional,allocatable::a
integer,optional,pointer::b
if(present(a))then
print*,"pass"
allocate(a)
a = 10
call sub2(a)
endif
if(present(b))then
print*,"pass"
allocate(b)
b = 10
call sub2(a)
endif
end subroutine
subroutine sub2(b)
integer::b
b = b+10
end subroutine
end
