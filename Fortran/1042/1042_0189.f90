function f(i)
character(*) f
if (len(f)/=3)write(6,*) "NG"
if (i/=2)write(6,*) "NG"
f='123'
end
character*3 f
if (f(2)/='123')write(6,*) "NG"
print *,'pass'
end
