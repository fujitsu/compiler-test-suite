integer,allocatable,target::a(:)
integer,pointer::p(:)
allocate(a(3))
a=(/1,2,3/)
p=>a(1:3:2)
if (any(p/=(/1,3/)))write(6,*) "NG"
print *,'pass'
end

