      program main
      implicit real*8(d),logical*4(l),integer*2(h),complex*16(c)
      common /blk1/da1(1500),da2(1500),da3(1500),da4(1500)
      common /blk2/ra1(1500),ra2(1500),ra3(1500),ra4(1500)
      common /blk3/ld1(1500),ld2(1500),ld3(1500),ld4(1500)
      common /blk4/cd1(1500),cd2(1500),cd3(1500),cd4(1500)
      common /blk5/na1(1500),na2(1500),na3(1500),na4(1500)
      dimension  db1(1500)
      data  db1/1500*1.d0/
      call init
      write(6,*) ' <test item-1> '
      call sub1(db1,da1,da2,da3,da4,1500)
      write(6,*) ' ** db1 ** '
      write(6,602) db1
      write(6,*) ' <test item-2> '
      call sub2(cd1,cd2,cd3,cd4,1500)
      write(6,*) ' ** cd1 ** '
      write(6,603) cd1
      write(6,*) ' <test item-3> '
      call sub3(na1,na2,na3,na4,1500)
      write(6,*) ' ** na1 ** '
      write(6,600) (na1(i),i=1,1400)
      write(6,604) (na1(i),i=1401,1500)
 600  format(1h ,10(10(i6,1x)/ ,1h ) )
 601  format(1h ,25(4(e17.9,1x)/ ,1h ) )
 602  format(1h ,25(4(d17.9,1x)/ ,1h ) )
 603  format(1h ,25(2('(',d15.7,',',d15.7,')',1x)/ ,1h ) )
 604  format(1h ,20(7(i10,1x)/ ,1h ) )
      stop
      end
      subroutine init
      implicit real*8(d),logical*4(l),integer*2(h),complex*16(c)
      common /blk1/da1(1500),da2(1500),da3(1500),da4(1500)
      common /blk2/ra1(1500),ra2(1500),ra3(1500),ra4(1500)
      common /blk3/ld1(1500),ld2(1500),ld3(1500),ld4(1500)
      common /blk4/cd1(1500),cd2(1500),cd3(1500),cd4(1500)
      common /blk5/na1(1500),na2(1500),na3(1500),na4(1500)
      do 10 i=1,1500
        da1(i)=1.d0
        da2(i)=2.d0
        da3(i)=3.d0
        da4(i)=dfloat(i)
        ra1(i)=1.0
        ra2(i)=3.0
        ra3(i)=float(101-i)
        ra4(i)=2.0
        ld1(i)=.false.
        ld2(i)=.false.
        ld3(i)=.false.
        ld4(i)=.false.
        cd1(i)=(1.d0,4.d0)
        cd2(i)=(2.d0,3.d0)
        cd3(i)=(3.d0,2.d0)
        cd4(i)=dcmplx(dfloat(i),dfloat(i))
  10  continue
      da3(101)=99.d0
      do 20 i=2,1500,2
        ld1(i)=.true.
        ld3(i-1)=.true.
  20  continue
      do 30 i=1,1500
        na1(i)=i
        na2(i)=mod(i,5)+1
        na3(i)=51-i
        na4(i)=1
  30  continue
      return
      end
      subroutine sub1(db1,da1,da2,da3,da4,nn)
      implicit real*8(d),logical*4(l),integer*2(h),complex*16(c)
      common /blk2/ra1(1500),ra2(1500),ra3(1500),ra4(1500)
      common /blk3/ld1(1500),ld2(1500),ld3(1500),ld4(1500)
      common /blk4/cd1(1500),cd2(1500),cd3(1500),cd4(1500)
      common /blk5/na1(1500),na2(1500),na3(1500),na4(1500)
      dimension  db1(nn),da1(nn),da2(nn),da3(nn),da4(nn)
      dmx=0.d0
      imx=0
      do 10 i=1,nn/2
        dx = da1(i)+da2(i)*da3(i)-da4(i)
        if (dx.gt.dmx) then
          dmx=dx
          imx=i
        endif
        db1(i) = dx
  10  continue
      write(6,*) ' ** sub1  ** dmx= ',dmx,' imx= ',imx
      do 20 j=1,10
        dmx=db1(j)
        do 20 i=2,nn
          dx=dmax1(da2(i),da3(i))
          if (ld4(i)) dx=dx+da4(i)
          lx=ld1(i).and. .not.ld2(na1(i))
          if (lx .or. ld3(j)) then
           if (dmx.gt.dx) then
             dmx=dx
             imx=i
           endif
           da1(i)=da1(i)+dimag(cd1(na1(i)))
          endif
  21    continue
        db1(nn/2+j)=dmx
  20  continue
      write(6,*) ' **  no.2 ** dmx= ',dmx,' imx= ',imx
      return
      end
      subroutine sub2(cd1,cd2,cd3,cd4,nn)
      implicit real*8(d),logical*4(l),integer*2(h),complex*16(c)
      common /blk1/da1(1500),da2(1500),da3(1500),da4(1500)
      common /blk2/ra1(1500),ra2(1500),ra3(1500),ra4(1500)
      common /blk3/ld1(1500),ld2(1500),ld3(1500),ld4(1500)
      common /blk5/na1(1500),na2(1500),na3(1500),na4(1500)
      dimension  cd1(nn),cd2(nn),cd3(nn),cd4(nn)
      nx=nn-10
      do 10 i=2,nx
        if (ld1(i)) then
         cdx=cd1(i)+cd2(i)
         if (ld2(i)) then
           cdx=cd3(i)+dcmplx(da2(i),da3(i))
           cd1(i)=cd2(na1(i))*cdx
         else
           n=na1(i)+na2(i)
           if (ld4(i) .and. n.gt.2000) n=n-1
           cd1(i)=cd2(n)*(2.d0,1.d0)
         endif
         cd1(i)=cd1(i)+cd4(i)
        else
         cd1(i)=cd1(i)-(1.d0,1.d0)
        endif
  10  continue
      return
      end
      subroutine sub3(na1,na2,na3,na4,nn)
      implicit real*8(d),logical*4(l),integer*2(h),complex*16(c)
      common /blk1/da1(1500),da2(1500),da3(1500),da4(1500)
      common /blk2/ra1(1500),ra2(1500),ra3(1500),ra4(1500)
      common /blk3/ld1(1500),ld2(1500),ld3(1500),ld4(1500)
      common /blk4/cd1(1500),cd2(1500),cd3(1500),cd4(1500)
      dimension na1(nn),na2(nn),na3(nn),na4(nn)
      ny=nn-15
      do 10 i=2,ny
        n1=i-1
        n2=i/2
        na1(i)=na2(i)+mod(na3(i),n2)
        nx = na3(i)/n2
        if (ld1(i) .or.  n1.gt.1000) then
          na1(i)=na3(i)-nx+n1
          if (ld3(i).eqv.ld4(i)) then
            nx=na4(i)**2-idim(na2(i),n1)
          else
            nx=nx-ishft(na4(i),na2(i))
          endif
          na1(i)=na1(i)+nx
        endif
  10  continue
      do 20 i=ny,nn
        nx=1501-i
        na1(i)=na2(i)**nx
  20  continue
      return
      end
