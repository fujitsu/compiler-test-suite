subroutine s1
complex,parameter:: c1(2:3)=[(0.1,0.2),(0.3,0.4)],c2(2)=[(0.1,0.2),(0.3,0.4)]
complex          :: c11(2:3)=[(0.1,0.2),(0.3,0.4)],c12(2)=[(0.1,0.2),(0.3,0.4)]
integer,parameter :: k1(*)= lbound(c1% im), k2(*)=lbound(c1), k3(*)=lbound(c1(:)%im),k4(*)=lbound(lbound(cos(c1%im)))
real,parameter:: r1(*)=cos(c1%im),r2(*)=cos(c1(:)%im)
real,parameter:: w1(*)=cos(c2%im),w2(*)=cos(c2(:)%im)
real:: r11(2),r12(2),w11(2),w12(2)
real:: r21(2),r22(2),w21(2),w22(2)
integer,parameter :: n1(*)= lbound(c2% im), n2(*)=lbound(c2), n3(*)=lbound(c2(:)%im),n4(*)=lbound(lbound(cos(c2%im)))
integer::k5(1),k6(1),k7(1),k8(1)
integer::k15(1),k16(1),k17(1),k18(1)
integer::n5(1),n6(1),n7(1),n8(1)
integer::n15(1),n16(1),n17(1),n18(1)
real a(2)
 k5(:)=lbound(c1% im)
 k6(:)=lbound(c1)
 k7(:)=lbound(c1(:)%im)
 k8(:)=lbound(lbound(cos(c1%im)))
 k15(:)=lbound(c2% im)
 k16(:)=lbound(c2)
 k17(:)=lbound(c2(:)%im)
 k18(:)=lbound(lbound(cos(c2%im)))
r11(:)=cos(c1%im)
r12(:)=cos(c1(:)%im)
w11(:)=cos(c2%im)
w12(:)=cos(c2(:)%im)
 n5(:)=lbound(c11% im)
 n6(:)=lbound(c11)
 n7(:)=lbound(c11(:)%im)
 n8(:)=lbound(lbound(cos(c11%im)))
 n15(:)=lbound(c12% im)
 n16(:)=lbound(c12)
 n17(:)=lbound(c12(:)%im)
 n18(:)=lbound(lbound(cos(c12%im)))
r21(:)=cos(c11%im)
r22(:)=cos(c11(:)%im)
w21(:)=cos(c12%im)
w22(:)=cos(c12(:)%im)
if (any(k1/=1)) print *,101
if (any(k2/=2)) print *,102
if (any(k3/=1)) print *,103
if (any(k4/=1)) print *,104
a=[c1(2)%im, c1(3)%im]
if (any(abs(r1(:)-cos(a))>0.0001)) print *,201
if (any(abs(r2(:)-cos(a))>0.0001)) print *,202
a=[c2(1)%im, c2(2)%im]
if (any(abs(w1(:)-cos(a))>0.0001)) print *,203
if (any(abs(w2(:)-cos(a))>0.0001)) print *,204
if (any(k5/=1)) print *,201,lbound(c1% im)
if (any(k6/=2)) print *,202
if (any(k7/=1)) print *,203
if (any(k8/=1)) print *,204
if (any(k15/=1)) print *,211,lbound(c2% im)
if (any(k16/=1)) print *,212
if (any(k17/=1)) print *,213
if (any(k18/=1)) print *,214
a=[c1(2)%im, c1(3)%im]
if (any(abs(r11(:)-cos(a))>0.0001)) print *,221
if (any(abs(r12(:)-cos(a))>0.0001)) print *,222
a=[c2(1)%im, c2(2)%im]
if (any(abs(w11(:)-cos(a))>0.0001)) print *,223
if (any(abs(w12(:)-cos(a))>0.0001)) print *,224
if (any(n1/=1)) print *,501
if (any(n2/=1)) print *,502
if (any(n3/=1)) print *,503
if (any(n4/=1)) print *,504
if (any(n5/=1)) print *,301
if (any(n6/=2)) print *,302
if (any(n7/=1)) print *,303
if (any(n8/=1)) print *,304
if (any(n15/=1)) print *,311
if (any(n16/=1)) print *,312
if (any(n17/=1)) print *,313
if (any(n18/=1)) print *,314
a=[c1(2)%im, c1(3)%im]
if (any(abs(r21(:)-cos(a))>0.0001)) print *,321
if (any(abs(r22(:)-cos(a))>0.0001)) print *,322
a=[c2(1)%im, c2(2)%im]
if (any(abs(w21(:)-cos(a))>0.0001)) print *,323
if (any(abs(w22(:)-cos(a))>0.0001)) print *,324
end
call s1
print *,'pass'
end
