call test01()
call test02()
print *,'pass'
end

subroutine test02()
integer :: a(10)
a=(/1,2,3,4,5,6,7,8,9,10/)
a=3
if (loc(a(3)).ne.loc(a(3:3))) print *,'err'
if (loc(a(4)).ne.loc(a(4:4))) print *,'err'
if (1.eq.2)print *,loc(a(3))
if (1.eq.2)print *,loc(a(3:3))
if (1.eq.2)print *,loc(a(a))
end

subroutine test01()
integer :: erd
external erd
write(14,*) loc(erd)
end
integer function erd()
erd=1
end
