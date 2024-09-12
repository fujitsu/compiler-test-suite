call test01()
print *,"pass"
end
subroutine test01()
integer(kind=1) :: i1
integer(kind=2) :: i2
integer(kind=8) :: i8
if (1.eq.2) then
read (10,fmt="(i)",size=i1,advance="no")
read (11,fmt="(i)",size=i2,advance="no")
read (12,fmt="(i)",size=i8,advance="no")
endif
end

