call aaaaa
print *,'pass'
end
subroutine aaaaa
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
