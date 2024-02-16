integer*4,parameter::a=2147483647_4
integer*4,parameter::b=2147483646_4
integer*4,parameter::c=-2147483647_4
integer*4,parameter::d=-2147483646_4
integer*8,parameter::e=9223372036854775807_8
integer*8,parameter::f=9223372036854775806_8
integer*8,parameter::g=-9223372036854775808_8
integer*8,parameter::h=-9223372036854775807_8
integer*1,parameter::h1=-128
integer*1,parameter::h2=127
integer*2,parameter::h3=-32768
integer*2,parameter::h4=32767
logical,parameter::m=BLT(a,e)
logical,parameter::n=BLT(f,b)
logical,parameter::o=BLT(c,g)
logical,parameter::p=BLT(h,d)
logical,parameter::p2=BLT(huge(h),huge(g))
logical,parameter::p3=BLT(huge(h1),huge(h2))
logical,parameter::p4=BLT(huge(h3),huge(h4))
logical,parameter::p5=BLT(huge(a),huge(b))
logical::m1,n1,o1,p1,q1,r1,s1,t1
m1=BLT(a,e)
n1=BLT(f,b)
o1=BLT(c,g)
p1=BLT(h,d)
q1=BLT(huge(h),huge(g))
r1=BLT(huge(h1),huge(h2))
s1=BLT(huge(h3),huge(h4))
t1=BLT(huge(a),huge(b))
if((m .neqv. m1) .and. (m .neqv. .true.))print*,"100"
if((n .neqv. n1) .and. (n .neqv. .false.))print*,"101"
if((o .neqv. o1) .and. (o .neqv. .false.))print*,"102"
if((p .neqv. p1) .and. (p .neqv. .true.))print*,"103"
if((p2 .neqv. q1) .and. (p2 .neqv. .false.))print*,"104"
if((p3 .neqv. r1) .and. (p3 .neqv. .false.))print*,"105"
if((p4 .neqv. s1) .and. (p4 .neqv. .false.))print*,"106"
if((p5 .neqv. t1) .and. (p5 .neqv. .false.))print*,"107"
print*,"PASS"
end
