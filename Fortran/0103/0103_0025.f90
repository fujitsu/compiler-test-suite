integer*2,parameter::a=-1
integer*2,parameter::b=-1
integer*1,parameter::c=-15
integer*1,parameter::d=-15
integer*4,parameter::e=-15
integer*4,parameter::f=-15
integer*8,parameter::g=-15
integer*8,parameter::h=-15
integer,parameter::i=DSHIFTL(huge(a),huge(b),16)
integer,parameter::j=DSHIFTL(huge(c),huge(d),8)
integer*4,parameter::k=DSHIFTL(huge(e),huge(f),32)
integer*8,parameter::l=DSHIFTL(huge(g),huge(h),64)
if(i .ne.32767 )print*,"100"
if(j .ne. 127)print*,"1001"
if(k .ne. 2147483647_4)print*,"102"
if(l .ne. 9223372036854775807_8)print*,"103"
print*,"PASS"
end

