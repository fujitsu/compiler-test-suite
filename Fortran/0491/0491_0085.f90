subroutine s1
 type z
    integer::x1
    type(z),pointer::x2(:)
 end type
type(z),pointer::p1(:),p2(:)
logical::g1,g2

allocate(p1(2),p2(2))
p1(1)%x2=> p2
p2(1)%x2=> p1
write(11,*) associated(p1(1)%x2), associated(p2(1)%x2)
rewind 11
read(11,*) g1,g2
if (.not.g1)print *,201
if (.not.g2)print *,202
end
call s1
print *,'pass'
end
