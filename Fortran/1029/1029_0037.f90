logical a, b, c, d, e, f
integer l, m
a = .true.
b = .true.
c = .true.
d = .true.
e = .true.
f = .true.
l = 1
m = 0

if ( (.not.a .or. .not.b ) .and. c .and. d .or. .not.e .and. &
    ( .not.f .or. l.ne.1) ) m=1

if (m==1) write(6,*) "NG"

print *,'pass'

end
