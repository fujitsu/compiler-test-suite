subroutine s1
type x
  complex:: a
end type
type xx
  integer:: z1
  type(x):: z2
end type
type(xx):: w(2)
w=[xx(-2,x((-2,-2))),xx(-1,x((-1,-3)))]
write(1,*) '1,,2'
rewind 1
read(1,*) k1,w(2)%z2%a%im,k2
if (k1/=1) print *,101
if (w(2)%z2%a%re/=-1) print *,102
if (w(2)%z2%a%im/=-3) print *,103
if (w(1)%z2%a%re/=-2) print *,112
if (w(1)%z2%a%im/=-2) print *,113
if (k2/=2) print *,104
call sub1(w(2)%z2%a%im)
if (w(2)%z2%a%re/=-1) print *,104
if (w(2)%z2%a%im/=-4) print *,105
if (w(1)%z2%a%re/=-2) print *,122
if (w(1)%z2%a%im/=-2) print *,123
call sub2(w%z2%a%im)
if (w(2)%z2%a%re/=-1) print *,204
if (w(2)%z2%a%im/=-5) print *,205
if (w(1)%z2%a%re/=-2) print *,222
if (w(1)%z2%a%im/=-5) print *,223
end
subroutine sub1(x)
if (x/=-3) print *,201
x=-4
end
subroutine sub2(x)
real::x(*)
if (x(1)/=-2) print *,301
if (x(2)/=-4) print *,401
x(:2)=-5
end
call s1
print *,'pass'
end
