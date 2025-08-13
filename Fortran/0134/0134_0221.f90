subroutine s1(a,x)
d=-a
write(75, '(z8.8)')d
write(75, '(z8.8)')sign(1.0,a)
write(75, '(z8.8)')sign(1.0,d)
write(75, '(z8.8)')x(1.0,a)
write(75, '(z8.8)')x(1.0,d)
if (sign(1.,d)/=-1.0)print *,101
if (sign(1.,a)/=+1.0)print *,102
if (x   (1.,d)/=-1.0)print *,103
if (x   (1.,a)/=+1.0)print *,104
end
intrinsic sign
call s1(0.0,sign)
print *,'pass'
end
