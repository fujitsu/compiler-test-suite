
      integer*4   i1
      integer*2   i2
      integer*4   i4
      integer*4   i8
      real*4      r4
      real*8      r8
      real*8     r16
      complex*8   c8,  c8a(5),  c8b(5)
      complex*16  c16, c16a(5), c16b(5)
      complex*16  c32, c32a(5), c32b(5)
      logical*4   chkc8, chkc16, chkc32
      parameter(i1=2,i2=3,i4=4,i8=5,
     1          r4=6,r8=5,r16=4,
     2          c8=(1.0,2.0),c16=(3.0,4.0),
     3          c32=(5.0,6.0) )
      data c8b  / (109.00000,28.00000), (-362.99976,246.00000),
     1            (109.00000,28.00000), (-9407.0000,-27461.996),
     2            (109.00000,28.00000)     /
      data c16b / (97.196721311475407d0,488.16393442622950d0),
     1            (17.327868852459016d0,74.273224043715846d0),
     2            (97.196721311475407d0,488.16393442622950d0),
     3            (-167.68852459016393d0,1021.0928961748634d0),
     4            (97.196721311475407d0,488.16393442622950d0) /
      data c32b / (59.393769569396972d0,69.906666666666666d0),
     1            (93.219999999999999d0,59.039999999999999d0),
     2            (59.393769569396972d0,69.906666666666666d0),
     3            (167.22000000000000d0,131.03999999999999d0),
     4            (59.393769569396972d0,69.906666666666666d0) /
c
      do 100 i=1, 5, 2
        c8a(i) =dcmplx(dcmplx(i8*c8+c32)+int(i8*c8+c32)*real(i1*c16)+
     +          real(i8*c8+c32)+c32+c16+c8+dcmplx(i4)*i4+i4)
        c16a(i)=cmplx(r16**i4+c32)+i4+dcmplx(c32*c16)+c32**2*(r4+c8)+
     +          i8*c8+c32+i8*c16/c32+dcmplx(i8*c32)
        c32a(i)=real(c16*c8/c32)+cmplx(i8*c16)+dcmplx(i8*c32)+
     +          cmplx(i8*c16)+(i8*c32*i2-i4)/r4/c16
  100 continue
      do 200 i=2, 4, 2
        c8a(i) =c32**(i1+i)/c32+i+i8+r8+c32*int(c32)/c32+
     +          real(r8*r16)+c32+c16+c8+dcmplx(i)*i+i
        c16a(i)=i**(i/2)*c32**(i/2)-i4+c32*c16+(c8+r16)+
     +          i8*c8+c32+i8*c16/int(c16)+dcmplx(i**2)/c32
        c32a(i)=i*i+(c32*c8/c16)+(c16/r4)*i2+i8*c32*i+
     +          i8*c16-c16*c32+i*c32+i
  200 continue
c
      do 10 i=1, 5
        if (chkc8(c8a(i),c8b(i)).and.chkc16(c16a(i),c16b(i)).and.
     +      chkc32(c32a(i),c32b(i)) ) then
           print *, i, ': *** ok ***'
        else
            print *, i, ': ??? ng ???'
          print *, 'c8a(i) =',c8a(i),  '  c8b(i) =',c8b(i)
          print *, 'c16a(i)=',c16a(i), '  c16b(i)=',c16b(i)
          print *, 'c32a(i)=',c32a(i), '  c32b(i)=',c32b(i)
        endif
   10 continue
      end
c
      function chkc8(a, b)
      logical*4 chkc8
      complex*8 a, b
      real*4    ar, br, ai, bi
      chkc8=.false.
      ar=a
      br=b
      ai=aimag(a)
      bi=aimag(b)
      if (abs(1-ar/br).lt.1.0e-6.and.
     +    abs(1-ai/bi).lt.1.0e-6) chkc8=.true.
      return
      end
c
      function chkc16(a, b)
      logical*4 chkc16
      complex*16 a, b
      real*8    ar, br, ai, bi
      chkc16=.false.
      ar=a
      br=b
      ai=dimag(a)
      bi=dimag(b)
      if (abs(1-ar/br).lt.1.0e-6.and.
     +    abs(1-ai/bi).lt.1.0e-6) chkc16=.true.
      return
      end
c
      function chkc32(a, b)
      logical*4 chkc32
      complex*16 a, b
      real*8   ar, br, ai, bi
      chkc32=.false.
      ar=a
      br=b
      ai=dimag(a)
      bi=dimag(b)
      if (abs(1-ar/br).lt.1.0e-6.and.
     +    abs(1-ai/bi).lt.1.0e-6) chkc32=.true.
      return
      end
