      subroutine ss
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
      do 200 i=2, 4, 2
        c8a(i) =c32**(i1+i)/c32+i+i8+r8+c32*int(c32)/c32+
     +          real(r8*r16)+c32+c16+c8+dcmplx(i)*i+i
        c16a(i)=i**(i/2)*c32**(i/2)-i4+c32*c16+(c8+r16)+
     +          i8*c8+c32+i8*c16/int(c16)+dcmplx(i**2)/c32
        c32a(i)=i*i+(c32*c8/c16)+(c16/r4)*i2+i8*c32*i+
     +          i8*c16-c16*c32+i*c32+i
  200 continue
      do 10 i=1, 5
        if (chkc8(c8a(i),c8b(i)).and.chkc16(c16a(i),c16b(i)).and.
     +      chkc32(c32a(i),c32b(i)) ) then
        else
        endif
   10 continue
      end
      print *,'pass'
      end
      logical function   chkc8(c81,c82)
      complex(4):: c81,c82
      end
      logical function   chkc16(c81,c82)
      complex(8):: c81,c82
      end
      logical function   chkc32(c81,c82)
      complex(8):: c81,c82
      end
