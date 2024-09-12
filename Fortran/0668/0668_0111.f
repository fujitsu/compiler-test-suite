      program main

      write(6,*) '**** ****'
      call sub1
      call sub2
      call sub3
      call sub4
      call sub5
      call sub6
      call sub7
      call sub8
      call sub9
      call sub10
      call sub11
      call sub12

      stop
      end

      subroutine sub1
      integer*4  i01a(10),i01b(10),i01c(10)
      real*4     r01a(10)
      real*8     d01a(10)
      data       i01a/10*0/,i01b/10*0/,i01c/10*0/
      data       r01a/10*3.5/,d01a/10*2.22/
      do 11 i=1,10
        i01a(i)=int(r01a(i))
        i01b(i)=ifix(r01a(i))
        i01c(i)=idint(d01a(i))
   11 continue
      write(6,*) ' '
      write(6,*) '##check p1##'
      write(6,*) i01a
      write(6,*) i01b
      write(6,*) i01c
      return
      end

      subroutine sub2
      integer*4  i01a(10)
      real*4     r01a(10),r01b(10),r01c(10)
      real*8     d01a(10)
      data       i01a/10*3/
      data       r01a/10*0.1/,r01b/10*0.1/,r01c/10*0.1/
      data       d01a/10*5.6666/
      do 12 i=1,10
        r01a(i)=real(i01a(i))
        r01b(i)=float(i01a(i))
        r01c(i)=sngl(d01a(i))
   12 continue
      write(6,*) ' '
      write(6,*) '##check p2##'
      write(6,100) r01a
      write(6,100) r01b
      write(6,100) r01c
  100 format(1x,9f8.5)
      return
      end

      subroutine sub3
      real*4     r01a(10),r01b(10)
      real*8     d01a(10),d01b(10)
      complex*8  c01a(10)
      complex*16 cd01a(10)
      data       r01a/10*5./,r01b/10*7./
      data       d01a/10*6./,d01b/10*8./
      data       c01a/10*(0.,0.)/
      data       cd01a/10*(0.,0.)/
      do 13 i=1,10
        c01a(i)=cmplx(r01a(i),r01b(i))
        cd01a(i)=dcmplx(d01a(i),d01b(i))
   13 continue
      write(6,*) ' '
      write(6,*) '##check p3##'
      write(6,101) c01a
      write(6,101) cd01a
  101 format(f16.10)
      return
      end

      subroutine sub4
      real*4     r01a(10),r01b(10)
      real*8     d01a(10),d01b(10)
      data       r01a/10*5.1/,r01b/10*3.456789/
      data       d01a/10*6.7/,d01b/10*4.123456789/
      do 14 i=1,10
        r01a(i)=aint(r01b(i))
        d01a(i)=dint(d01b(i))
   14 continue
      write(6,*) ' '
      write(6,*) '##check p4##'
      write(6,102) r01a
      write(6,102) d01a
  102 format(5f16.10)
      return
      end

      subroutine sub5
      real*4     r01a(10),r01b(10)
      real*8     d01a(10),d01b(10)
      data       r01a/10*0./
      data       r01b/2.22,3.65,1.6,8.7,5.0,2.5,4.4,6.9,8.4,9.9/
      data       d01a/10*0./
      data       d01b/6.24,3.65,4.56,8.75,5.06,2.5,14.4,6.9,8.4,0.9/
      do 15 i=1,10
        r01a(i)=anint(r01b(i))
        d01a(i)=dnint(d01b(i))
   15 continue
      write(6,*) ' '
      write(6,*) '##check p5##'
      write(6,102) r01a
      write(6,102) d01a
  102 format(5f16.10)
      return
      end

      subroutine sub6
      integer*4 i01a(10),i01b(10)
      real*4    r01a(10)
      real*8    d01a(10)
      data      i01a/10*0/,i01b/10*0/
      data      r01a/3.2,4.3,2.6,9.9,1.,3.4,5.555,7.,3.,6./
      data      d01a/5.,4.,6.,6.,8.,1.,3.,4.,5.,7./
      do 16 i=1,10
        i01a(i)=nint(r01a(i))
        i01b(i)=idnint(d01a(i))
   16 continue
      write(6,*) ' '
      write(6,*) '##check p6##'
      write(6,*) i01a
      write(6,*) i01b
      return
      end

      subroutine sub7
      integer*4  i01a(10),i01b(10)
      real*4     r01a(10),r01b(10)
      real*8     d01a(10),d01b(10)
      complex*8  c01a(10),c01b(10)
      complex*16 cd01a(10),cd01b(10)
      data       i01a/10*0/,i01b/2,-3,0,44,3,-8,-9,77,-0,9/
      data       r01a/10*0./,r01b/2.,0.,-1.,-1.,3.,8.,99.,-4.,1.,2./
      data       d01a/10*0./,d01b/2.,2.,2.,3.,3.,3.,4.,4.,4.,5./
      data       c01a/10*(0.,0.)/,c01b/10*(2.22,3.33)/
      data       cd01a/10*(0.,0.)/,cd01b/10*(4.44,5.55)/
      do 17 i=1,10
        i01a(i)=iabs(i01b(i))
        r01a(i)=abs(r01b(i))
        d01a(i)=dabs(d01b(i))
        c01a(i)=cabs(c01b(i))
        cd01a(i)=cdabs(cd01b(i))
   17 continue
      write(6,*) ' '
      write(6,*) '##check p7##'
      write(6,*) i01a
      write(6,103) r01a
      write(6,103) d01a
      write(6,103) c01a
      write(6,103) cd01a
  103 format(f16.13)
      return
      end

      subroutine sub8
      integer*4  i01a(10),i01b(10)
      real*4     r01a(10),r01b(10),r01c(10)
      real*8     d01a(10),d01b(10),d01c(10)
      data       i01a/10*0/,i01b/22,-33,44,55,66,77,-88,99,11,333/
      data       r01a/10*0/,r01b/10*34.987654/,r01c/10*7./
      data       d01a/10*0/,d01b/10*53.6666/d01c/10*7./
      do 18 i=1,10
        i01a(i)=mod(i01b(i),7)
        r01a(i)=amod(r01b(i),r01c(i))
        d01a(i)=dmod(d01b(i),d01c(i))
   18 continue
      write(6,*) ' '
      write(6,*) '##check p8##'
      write(6,*) i01a
      write(6,104) r01a
      write(6,104) d01a
  104 format(5f16.10)
      return
      end

      subroutine sub9
      real*4     r01a(10)
      real*8     d01a(10)
      data       r01a/3.,4.,6.,2.,1.,9.,3.,2.,7.,8./
      data       d01a/10*0./
      do 19 i=1,10
        d01a(i)=dprod(r01a(i),r01a(i))
   19 continue
      write(6,*) ' '
      write(6,*) '##check p9##'
      write(6,105) d01a
  105 format(5f16.10)
      return
      end

      subroutine sub10
      integer*4 i01a(10),i01b(10)
      real*4    r01a(10),r01b(10)
      real*8    d01a(10),d01b(10)
      data      i01a/1,-2,-3,4,-5,0,6,7,-8,3/
      data      i01b/-1,5,-7,-8,5,9,2,-4,2,8/
      data      r01a/-1,-5,-7,-8,5,9,2,-4,1,18/
      data      r01b/-1,-5,-7,8,5,-9,-2,-4,2,8/
      data      d01a/-1,-5,-7,-8,-44,-9,-2,-4,-1,-18/
      data      d01b/-1,65,7,8,5,9,2,4,2,8/
      do 20 i=1,10
        i01a(i)=isign(i01a(i),i01b(i))
        r01a(i)=sign(r01b(i),r01a(i))
        d01a(i)=dsign(d01a(i),d01b(i))
   20 continue
      write(6,*) ' '
      write(6,*) '##check p10##'
      write(6,*) i01a
      write(6,106) r01a
      write(6,106) d01a
  106 format(1x,4f16.10)
      return
      end

      subroutine sub11
      integer*4 i01a(10),i01b(10)
      real*4    r01a(10),r01b(10)
      real*8    d01a(10),d01b(10)
      data      i01a/15,60,0,-7,2,88,6,99,1,4/
      data      i01b/0,3,47,85,4,88,-32,5,9,2/
      data      r01a/33,5,7,-1,5,5,9,55,-4,18/
      data      r01b/5,7,8,10,4,77,91,2,54,9/
      data      d01a/11,-5,-7,38,374,69,2,4,-1,18/
      data      d01b/-1,65,7,8,35,9,2,6,22,8/
      do 21 i=1,10
        i01a(i)=idim(i01a(i),i01b(i))
        r01a(i)=dim(r01b(i),r01a(i))
        d01a(i)=ddim(d01a(i),d01b(i))
   21 continue
      write(6,*) ' '
      write(6,*) '##check p11##'
      write(6,*) i01a
      write(6,107) r01a
      write(6,107) d01a
  107 format(1x,4f16.10)
      return
      end

      subroutine sub12
      integer*4 imax0a,imax0b,imax0c
      integer*4 imin0a,imin0b,imin0c
      integer*4 i01a(10),i01b(10)
      real*4    rmax0a,rmax0b,rmin0a,rmin0b
      real*4    r01a(10),r01b(10)
      real*8    dmax0a,dmin0a
      real*8    d01a(10),d01b(10)
      data      imax0a/0/,imax0b/0/,imax0c/0/
      data      imin0a/0/,imin0b/0/,imin0c/0/
      data      rmax0a/0/,rmax0b/0/,rmin0a/0/,rmin0b/0/
      data      dmax0a/0/,dmin0a/0/
      data      i01a/15,60,0,-7,2,88,6,99,1,4/
      data      i01b/0,3,47,85,4,88,-32,5,9,2/
      data      r01a/33,5,7,-1,5,5,9,55,-4,18/
      data      r01b/5,7,8,10,4,77,91,2,54,9/
      data      d01a/11,-5,-7,38,374,69,2,4,-1,18/
      data      d01b/-1,65,7,8,35,9,2,6,22,8/
      do 22 i=1,10
        imax0a=max(i01a(i),i01b(i))
        imax0b=max0(i01a(i),i01b(i))
        rmax0a=amax1(r01a(i),r01b(i))
        dmax0a=dmax1(d01a(i),d01b(i))
        rmax0b=amax0(i01a(i),i01b(i))
        imax0c=max1(r01a(i),r01b(i))
        imin0a=min(i01a(i),i01b(i))
        imin0b=min0(i01a(i),i01b(i))
        rmin0a=amin1(r01a(i),r01b(i))
        dmin0a=dmin1(d01a(i),d01b(i))
        rmin0b=amin0(i01a(i),i01b(i))
        imin0c=min1(r01a(i),r01b(i))
   22 continue
      write(6,*) ' '
      write(6,*) '##check p12##'
      write(6,*) imax0a
      write(6,*) imax0b
      write(6,108) rmax0a
      write(6,108) dmax0a
      write(6,108) rmax0b
      write(6,*) imax0c
      write(6,*) imin0a
      write(6,*) imin0b
      write(6,108) rmin0a
      write(6,108) dmin0a
      write(6,108) rmin0b
      write(6,*) imin0c
  108 format(5f16.10)
      return
      end
