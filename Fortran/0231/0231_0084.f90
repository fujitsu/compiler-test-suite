module m1
logical(1):: x1,y1
logical(2):: x2,y2
logical(4):: x4,y4
logical(8):: x8,y8
common /r1/y1
common /r2/y2
common /r4/y4
common /r8/y8
bind(c):: x1,x2,x4,x8
bind(c):: /r1/,/r2/,/r4/,/r8/
contains
function f1( x,y ) bind(c)
logical(1):: x,y,f1
value:: y
f1=x.or.y
end
function f2( x,y ) bind(c)
logical(2):: x,y,f2
value:: y
f2=x.or.y
end
function f3( x,y ) bind(c)
logical(4):: x,y,f3
value:: y
f3=x.or.y
end
function f4( x,y ) bind(c)
logical(8):: x,y,f4
value:: y
f4=x.or.y
end
function f5( x,y ) bind(c)
type,bind(c):: z
  logical(1):: z1
  logical(2):: z2
  logical(4):: z4
  logical(8):: z8
end type
type(z):: x,y,f5
value:: y
f5%z1=1     
end
end
use m1
if (f1(.false._1,.false._1)) print *,10001
if (f2(.false._2,.false._2)) print *,10002
if (f3(.false._4,.false._4)) print *,10003
if (f4(.false._8,.false._8)) print *,10004
print *,'pass'
end
