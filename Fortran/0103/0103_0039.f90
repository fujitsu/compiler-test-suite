real*4,parameter::a=123.056
real*4,parameter::b=-123.065
integer*4,parameter::d=DSHIFTR(int(a,4),int(b,4),8)
if (d .ne. 2080374783)print*,"101"
print*,"PASS"
end

