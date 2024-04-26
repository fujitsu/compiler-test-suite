real*16::a
real*8::b
real*4::c
real*2::d
integer::i4
a=15.44_16
b=15.44_8
c=15.44_4
d=15.44_2
i4=15
if(abs(real(a,KIND =2) - 15.44_2)>0.2) print*,"101"
if(abs(real(15.44_16,KIND =2) - 15.44_2)>0.2) print*,"102"
if(kind(real(a,KIND =2))/=2)print*,"103"

if(abs(real(b,KIND =2) - 15.44_2)>0.2) print*,"201",real(real(b,KIND =2),4)
if(abs(real(15.44_8,KIND =2) - 15.44_2)>0.2) print*,"202"
if(kind(real(b,KIND =2))/=2)print*,"203"

if(abs(real(c,KIND =2) - 15.44_2)>0.2) print*,"301"
if(abs(real(15.44_4,KIND =2) - 15.44_2)>0.2) print*,"302"
if(kind(real(c,KIND =2))/=2)print*,"303"

if(abs(real(d,KIND =2) - 15.44_2)>0.2) print*,"401"
if(abs(real(15.44_2,KIND =2) - 15.44_2)>0.2) print*,"402"
if(kind(real(d,KIND =2))/=2)print*,"403"

if(real(i4,KIND =2) /=15) print*,"501"
if(real(15,KIND =2) /=15) print*,"502"
if(kind(real(i4,KIND =2))/=2)print*,"503"

print*,"PASS"
end
