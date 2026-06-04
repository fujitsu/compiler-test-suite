integer :: aa(4)
call sub(aa,aa,1)
print*,"pass"
contains
subroutine sub(bb,cc,k)
integer :: bb(*),cc(k:*)
if(any(lbound(bb) /= 1))print*,201
if(any(lbound(cc) /= 1))print*,202
call sub2(bb)
call sub2(cc)

end subroutine sub
subroutine sub2(bb)
integer :: bb(..)
write(1,*)lbound(bb),ubound(bb)
rewind 1
read(1,*) k1,k2
if (k1/=1) print *,201
if (k2/=-1) print *,202
end subroutine sub2
end
