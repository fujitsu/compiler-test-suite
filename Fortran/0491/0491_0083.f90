subroutine s1
 type z 
    integer::x1
    class(z),pointer::x2
 end type
class(z),pointer::p1,p2
logical::g1,g2

allocate(p1,p2)
p1%x2=> p2
p2%x2=> p1
write(1,*) associated(p1%x2), associated(p2%x2)
rewind 1
read(1,*) g1,g2
if (.not.g1)print *,201
if (.not.g2)print *,202
end
call s1
print *,'pass'
end
