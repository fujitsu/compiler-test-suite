real*4,parameter::a=123.056
real*4,parameter::b=-123.065
integer*4,parameter::d=DSHIFTL(int(a,4),int(b,4),7)
if (d .ne. 15871)print*,"101"
print*,"PASS"
end

