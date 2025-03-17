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
call sub(a, b, c, d, e, f, m, l)
if(m .eq. 0) then
   print *, ': ok'
else
   print *, 'ng'
endif
end

subroutine sub(a, b, c, d, e, f, m, l)
logical a, b, c, d, e, f
integer l, m

if ((.not.a.or..not.b).and.      c.and.     d.or..not.e.and. &
    ( .not.f.or..not.l.eq.1)) m=1

end
