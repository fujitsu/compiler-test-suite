call sub(NULL())
print*,"pass"
contains
subroutine sub(a)
integer,allocatable::a
real::x
x =20.5
allocate(a)
a = x
if(a.ne.20)print*,"101"
end subroutine
end
