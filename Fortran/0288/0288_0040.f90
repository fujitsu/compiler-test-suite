call test()
print *,'pass'
end
subroutine test()
common /first/ a,b,c
common d,e,f, /second/ g
common /first/ h
a=1.0_4
b=2.0_4
c=3.0_4
d=4.0_4
e=5.0_4
f=6.0_4
g=7.0_4
h=8.0_4
call sub()
end
subroutine sub()
common /first/ a,b,c,h
common /second/ g 
common d,e,f
if (int(a).ne.1)print *,'err'
if (int(b).ne.2)print *,'err'
if (int(c).ne.3)print *,'err'
if (int(d).ne.4)print *,'err'
if (int(e).ne.5)print *,'err'
if (int(f).ne.6)print *,'err'
if (int(g).ne.7)print *,'err'
if (int(h).ne.8)print *,'err'
end
