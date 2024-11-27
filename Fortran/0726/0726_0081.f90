 call s1
 print *,'pass'
 end
 module m1
  interface chk
     module procedure chk1,chk2,chk3,chk4
  end interface
  contains
  subroutine chk1(x)
   dimension x(:)
   if (size(x)/=2)write(6,*) "NG"
  end subroutine
  subroutine chk2(x)
   dimension x(:,:)
   if (size(x)/=2*2)write(6,*) "NG"
  end subroutine
  subroutine chk3(x)
   dimension x(:,:,:)
   if (size(x)/=2*2*2)write(6,*) "NG"
  end subroutine
  subroutine chk4(x,i)
   dimension x(:)
   if (size(x)/=i)write(6,*) "NG"
  end subroutine
 end
 subroutine s1
 use m1
 character*(2) c(2)
 call ss1(c,2)
 contains
 subroutine ss1(c,i)
 character*(*) c(:)
 dimension x1(size(c)),x2(size(c),size(c)),x3(size(c),size(c),size(c))
 dimension y1(size(c(:))),y2(size(c(:)),size(c(:))),y3(size(c(:)),size(c(:)),size(c(:)))
 dimension z1(size(c(i-1:i))),z2(size(c(i-1:i)),size(c(i-1:i))),z3(size(c(i-1:i)),size(c(i-1:i)),size(c(i-1:i)))
 dimension w1(size(c(i-1:))),w2(size(c(i-1:)),size(c(i-1:))),w3(size(c(i-1:)),size(c(i-1:)),size(c(i-1:)))
 dimension v1(size(c(:i))),v2(size(c(:i)),size(c(:i))),v3(size(c(:i)),size(c(:i)),size(c(:i)))
 dimension t1(ubound(dim=i-1,array=c)),t2(ubound(dim=i-1,array=c),ubound(dim=i-1,array=c)),t3(ubound(dim=i-1,array=c),ubound(dim=i-1,array=c),ubound(dim=i-1,array=c))
 dimension u1(ubound(dim=i-1,array=c(:))),u2(ubound(dim=i-1,array=c(:)),ubound(dim=i-1,array=c(:))),u3(ubound(dim=i-1,array=c(:)),ubound(dim=i-1,array=c(:)),ubound(dim=i-1,array=c(:)))
 dimension p1(ubound(dim=i-1,array=c(i-1:i))),p2(ubound(dim=i-1,array=c(i-1:i)),ubound(dim=i-1,array=c(i-1:i))),p3(ubound(dim=i-1,array=c(i-1:i)),ubound(dim=i-1,array=c(i-1:i)),ubound(dim=i-1,array=c(i-1:i)))
 dimension q1(ubound(dim=i-1,array=c(i-1:))),q2(ubound(dim=i-1,array=c(i-1:)),ubound(dim=i-1,array=c(i-1:))),q3(ubound(dim=i-1,array=c(i-1:)),ubound(dim=i-1,array=c(i-1:)),ubound(dim=i-1,array=c(i-1:)))
 dimension x11(size(x1)),x12(size(x2)),x13(size(x3))
 dimension p11(size(p1)),p12(size(p2)),p13(size(p3))
 dimension u11(size(u1)),u12(size(u2)),u13(size(u3))
 dimension t11(size(t1)),t12(size(t2)),t13(size(t3))
 dimension w11(size(w1)),w12(size(w2)),w13(size(w3))
 dimension v11(size(v1)),v12(size(v2)),v13(size(v3))
 dimension y11(size(y1)),y12(size(y2)),y13(size(y3))
 dimension z11(size(z1)),z12(size(z2)),z13(size(z3))
 dimension q11(size(z1)),q12(size(z2)),q13(size(z3))
call chk(x1)
call chk(p1)
call chk(u1)
call chk(t1)
call chk(w1)
call chk(v1)
call chk(y1)
call chk(z1)
call chk(q1)
call chk(x2)
call chk(p2)
call chk(u2)
call chk(t2)
call chk(w2)
call chk(v2)
call chk(y2)
call chk(q2)
call chk(z3)
call chk(x3)
call chk(p3)
call chk(u3)
call chk(t3)
call chk(w3)
call chk(v3)
call chk(y3)
call chk(z3)
call chk(q3)
call chk(x11,2)
call chk(p11,2)
call chk(u11,2)
call chk(t11,2)
call chk(w11,2)
call chk(v11,2)
call chk(y11,2)
call chk(z11,2)
call chk(q11,2)
call chk(x12,4)
call chk(p12,4)
call chk(u12,4)
call chk(t12,4)
call chk(w12,4)
call chk(v12,4)
call chk(y12,4)
call chk(q12,4)
call chk(z12,4)
call chk(x13,8)
call chk(p13,8)
call chk(u13,8)
call chk(t13,8)
call chk(w13,8)
call chk(v13,8)
call chk(y13,8)
call chk(z13,8)
call chk(q13,8)
end subroutine
end
