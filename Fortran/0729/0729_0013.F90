#ifdef __unix
#else
 call s1
#endif
 print *,'pass'
 end
#ifdef __unix
#else
subroutine s1
character*1000 m
parameter (n=32)
integer*2 a1
integer*4 a2
integer*8 a3
real*4    b1
real*8    b2
real*16   b3
complex*8  c1
complex*16 c2
complex*32 c3
logical*4 d1
logical*4 d2
logical*4 d3
equivalence(a1,m(2+n*01:))
equivalence(a2,m(2+n*02:))
equivalence(a3,m(2+n*03:))
equivalence(b1,m(2+n*04:))
equivalence(b2,m(2+n*05:))
equivalence(b3,m(2+n*06:))
equivalence(c1,m(2+n*07:))
equivalence(c2,m(2+n*08:))
equivalence(c3,m(2+n*09:))
equivalence(d1,m(2+n*10:))
equivalence(d2,m(2+n*11:))
equivalence(d3,m(2+n*12:))
a1=1
a2=1
a3=1
b1=1
b2=1
b3=1
c1=(1,1)
c2=(1,1)
c3=(1,1)
d1=.true.
d2=.true.
d3=.true.
if (abs(a1+a2+a3+b1+b2+b3+c1+c2+c3-(6+(3,3)))>0.0001)write(6,*) "NG"
write(72,*)a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3
write(73)a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3
rewind 72
rewind 73
call tt1
call tt2
call ss1(a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3)
end
subroutine tt2
character*1000 m
parameter (n=32)
integer*2 a1
integer*4 a2
integer*8 a3
real*4    b1
real*8    b2
real*16   b3
complex*8  c1
complex*16 c2
complex*32 c3
logical*4 d1
logical*4 d2
logical*4 d3
equivalence(a1,m(2+n*01:))
equivalence(a2,m(2+n*02:))
equivalence(a3,m(2+n*03:))
equivalence(b1,m(2+n*04:))
equivalence(b2,m(2+n*05:))
equivalence(b3,m(2+n*06:))
equivalence(c1,m(2+n*07:))
equivalence(c2,m(2+n*08:))
equivalence(c3,m(2+n*09:))
equivalence(d1,m(2+n*10:))
equivalence(d2,m(2+n*11:))
equivalence(d3,m(2+n*12:))
read(73)a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3
call ss1(a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3)
if (abs(a1+a2+a3+b1+b2+b3+c1+c2+c3-(6+(3,3)))>0.0001)write(6,*) "NG"
end
subroutine tt1
character*1000 m
parameter (n=32)
integer*2 a1
integer*4 a2
integer*8 a3
real*4    b1
real*8    b2
real*16   b3
complex*8  c1
complex*16 c2
complex*32 c3
logical*4 d1
logical*4 d2
logical*4 d3
equivalence(a1,m(2+n*01:))
equivalence(a2,m(2+n*02:))
equivalence(a3,m(2+n*03:))
equivalence(b1,m(2+n*04:))
equivalence(b2,m(2+n*05:))
equivalence(b3,m(2+n*06:))
equivalence(c1,m(2+n*07:))
equivalence(c2,m(2+n*08:))
equivalence(c3,m(2+n*09:))
equivalence(d1,m(2+n*10:))
equivalence(d2,m(2+n*11:))
equivalence(d3,m(2+n*12:))
read(72,*)a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3
call ss1(a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3)
if (abs(a1+a2+a3+b1+b2+b3+c1+c2+c3-(6+(3,3)))>0.0001)write(6,*) "NG"
end
subroutine ss1(a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3)
integer*2 a1
integer*4 a2
integer*8 a3
real*4    b1
real*8    b2
real*16   b3
complex*8  c1
complex*16 c2
complex*32 c3
logical*4 d1
logical*4 d2
logical*4 d3
if (a1/=1)write(6,*) "NG"
if (a2/=1)write(6,*) "NG"
if (a3/=1)write(6,*) "NG"
if (b1/=1)write(6,*) "NG"
if (b2/=1)write(6,*) "NG"
if (b3/=1)write(6,*) "NG"
if (c1/=(1,1))write(6,*) "NG"
if (c2/=(1,1))write(6,*) "NG"
if (c3/=(1,1))write(6,*) "NG"
if (.not.d1)write(6,*) "NG"
if (.not.d2)write(6,*) "NG"
if (.not.d3)write(6,*) "NG"
if (abs(a1+a2+a3+b1+b2+b3+c1+c2+c3-(6+(3,3)))>0.0001)write(6,*) "NG"
end
#endif
