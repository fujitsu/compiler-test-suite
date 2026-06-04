call aaaaa
call bbbbb
call ccccc
print *,'pass'
end
subroutine aaaaa
real*4 r4(100)
real*8 r8(100)
real*16 r16(100)
call random_number(r4)
call random_number(r8)
call random_number(r16)
if(any(nint(nearest(1.0,r4))/=1)) print *,'fail'
if(any(nint(nearest(-1.0,r4))/=-1)) print *,'fail'
if(any(nint(nearest(1.0,r8))/=1)) print *,'fail'
if(any(nint(nearest(-1.0,r8))/=-1)) print *,'fail'
if(any(nint(nearest(1.0,r16))/=1)) print *,'fail'
if(any(nint(nearest(-1.0,r16))/=-1)) print *,'fail'

if(any(nint(nearest(1.0d0,r4))/=1)) print *,'fail'
if(any(nint(nearest(-1.0d0,r4))/=-1)) print *,'fail'
if(any(nint(nearest(1.0d0,r8))/=1)) print *,'fail'
if(any(nint(nearest(-1.0d0,r8))/=-1)) print *,'fail'
if(any(nint(nearest(1.0d0,r16))/=1)) print *,'fail'
if(any(nint(nearest(-1.0d0,r16))/=-1)) print *,'fail'

if(any(nint(nearest(1.0q0,r4))/=1)) print *,'fail'
if(any(nint(nearest(-1.0q0,r4))/=-1)) print *,'fail'
if(any(nint(nearest(1.0q0,r8))/=1)) print *,'fail'
if(any(nint(nearest(-1.0q0,r8))/=-1)) print *,'fail'
if(any(nint(nearest(1.0q0,r16))/=1)) print *,'fail'
if(any(nint(nearest(-1.0q0,r16))/=-1)) print *,'fail'

end
subroutine bbbbb
real*4 r4(100,100),r
real*8 r8(100,100),d
real*16 r16(100,100),q
r=1
d=1
q=1
call random_number(r4)
call random_number(r8)
call random_number(r16)
if(any(nint(nearest(r,r4))/=1)) print *,'fail'
if(any(nint(nearest(-r,r4))/=-1)) print *,'fail'
if(any(nint(nearest(r,r8))/=1)) print *,'fail'
if(any(nint(nearest(-r,r8))/=-1)) print *,'fail'
if(any(nint(nearest(r,r16))/=1)) print *,'fail'
if(any(nint(nearest(-r,r16))/=-1)) print *,'fail'

if(any(nint(nearest(d,r4))/=1)) print *,'fail'
if(any(nint(nearest(-d,r4))/=-1)) print *,'fail'
if(any(nint(nearest(d,r8))/=1)) print *,'fail'
if(any(nint(nearest(-d,r8))/=-1)) print *,'fail'
if(any(nint(nearest(d,r16))/=1)) print *,'fail'
if(any(nint(nearest(-d,r16))/=-1)) print *,'fail'

if(any(nint(nearest(q,r4))/=1)) print *,'fail'
if(any(nint(nearest(-q,r4))/=-1)) print *,'fail'
if(any(nint(nearest(q,r8))/=1)) print *,'fail'
if(any(nint(nearest(-q,r8))/=-1)) print *,'fail'
if(any(nint(nearest(q,r16))/=1)) print *,'fail'
if(any(nint(nearest(-q,r16))/=-1)) print *,'fail'

end
subroutine ccccc
real*4 r
real*8 d
real*16 q
r=10000000.0
d=1000000000000000.0d0
q=10000000000000000000000000000000.0q0
if(nint(nearest(1.0,r)).ne.1) print *,'fail'
if(nint(nearest(1.0,d)).ne.1) print *,'fail'
if(nint(nearest(1.0,q)).ne.1) print *,'fail'
if(nint(nearest(1.0d0,r)).ne.1) print *,'fail'
if(nint(nearest(1.0d0,d)).ne.1) print *,'fail'
if(nint(nearest(1.0d0,q)).ne.1) print *,'fail'
if(nint(nearest(1.0q0,r)).ne.1) print *,'fail'
if(nint(nearest(1.0q0,d)).ne.1) print *,'fail'
if(nint(nearest(1.0q0,q)).ne.1) print *,'fail'

if(kind(nearest(r,r)).ne.4) print *,'fail'
if(kind(nearest(r,d)).ne.4) print *,'fail'
if(kind(nearest(r,q)).ne.4) print *,'fail'
if(kind(nearest(d,r)).ne.8) print *,'fail'
if(kind(nearest(d,d)).ne.8) print *,'fail'
if(kind(nearest(d,q)).ne.8) print *,'fail'
if(kind(nearest(q,r)).ne.16) print *,'fail'
if(kind(nearest(q,d)).ne.16) print *,'fail'
if(kind(nearest(q,q)).ne.16) print *,'fail'
end
