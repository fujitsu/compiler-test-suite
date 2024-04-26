      program main
      integer*4  x0(10),x1(10),x2(10),x3(10),x4(10),
     c        x5(10),x6(10),x7(10),x8(10),x9(10),
     c        x10(10),x11(10),x12(10),x13(10),x14(10)
      integer*4  res,result
      integer*4  y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12
      integer*4  z0,z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12
      integer*4  v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12
      integer*4  w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12
      data    result/18890/

      y0=0.1
      y1=0.2
      y2=0.3
      y3=0.4
      y4=0.5
      y5=0.6
      y6=0.7
      y7=0.8
      y8=0.9
      y9=1.0
      y10=1.1
      y11=1.2
      y12=1.3
      z0=4.1
      z1=4.2
      z2=4.3
      z3=4.4
      z4=4.5
      z5=4.6
      z6=4.7
      z7=4.8
      z8=4.9
      z9=5.0
      z10=5.1
      z11=5.2
      z12=5.3
      v0=6.1
      v1=6.2
      v2=6.3
      v3=6.4
      v4=6.5
      v5=6.6
      v6=6.7
      v7=6.8
      v8=6.9
      v9=6.0
      v10=7.1
      v11=7.2
      v12=7.3
      w0=8.1
      w1=8.2
      w2=8.3
      w3=8.4
      w4=8.5
      w5=8.6
      w6=8.7
      w7=8.8
      w8=8.9
      w9=9.0
      w10=9.1
      w11=9.2
      w12=9.3

      do i=1,10
         x0(i)=0
         x1(i)=1
         x2(i)=2
         x3(i)=3
         x4(i)=4
         x5(i)=5
         x6(i)=6
         x7(i)=7
         x8(i)=8
         x9(i)=9
         x10(i)=10
         x11(i)=11
         x12(i)=12
         x13(i)=13
         x14(i)=14
      enddo
      do i=1,10
         x0(i)=x1(i)*y0+x2(i)*y1+x3(i)*y2+x4(i)*y3+
     c         x5(i)*y4+x6(i)*y5+x7(i)*y6+x8(i)*y7+x9(i)*y8+
     c         x10(i)*y9+x12(i)*y10+x13(i)*y11+x14(i)*y12+
     c         x1(i)*z0+x2(i)*z1+x3(i)*z2+x4(i)*z3+
     c         x5(i)*z4+x6(i)*z5+x7(i)*z6+x8(i)*z7+x9(i)*z8+
     c         x10(i)*z9+x12(i)*z10+x13(i)*z11+x14(i)*z12+
     c         x1(i)*v0+x2(i)*v1+x3(i)*v2+x4(i)*v3+
     c         x5(i)*v4+x6(i)*v5+x7(i)*v6+x8(i)*v7+x9(i)*v8+
     c         x10(i)*v9+x12(i)*v10+x13(i)*v11+x14(i)*v12+
     c         x1(i)*w0+x2(i)*w1+x3(i)*w2+x4(i)*w3+x11(i)+
     c         x5(i)*w4+x6(i)*w5+x7(i)*w6+x8(i)*w7+x9(i)*w8+
     c         x10(i)*w9+x12(i)*w10+x13(i)*w11+x14(i)*w12
      enddo
      res=0

      do i=1,10
        res=res+x0(i)
      enddo
      if (abs(res-result)>0.00001) goto 10
      write (6,*) "ok"
      goto 20
 10   write (6,*) "ng"
      write(6,*) res
      write(6,*) x0
 20   continue
      end
