      program main
      implicit real*8(d),logical*4(l),integer*2(h),complex*16(c)
      common /blk1/da1(100),da2(100),da3(100),da4(100)
      common /blk2/ra1(100),ra2(100),ra3(100),ra4(100)
      common /blk3/ld1(100),ld2(100),ld3(100),ld4(100)
      common /blk4/cd1(100),cd2(100),cd3(100),cd4(100)
      call init
      nn=49
      j=nn-1
        write(6,*) ' <<test item-1>> '
        do 10 i=2,nn
          rx=ra1(j)+ra2(1)
          ry=rx*ra3(i)
          ra4(i)=ry-ra4(i)
          lx=ld1(i).or.ld2(i)
          ly=lx.or. da1(i).gt.2.
          lz=.not.ly  .and.  ld3(i)
          if (lx.or.ld4(i)) then
            ld1(i)=lx.or.ly
            cd1(i)=cd2(i)*cd3(i)
          else
            ld1(i)=lx.and.lz
            cd1(i)=cd3(i)*cd4(i)
          endif
   10   continue
        write(6,*) '** ra4 **'
        write(6,601) ra4
        write(6,*) '** ld1 **'
        write(6,*)   ld1
        write(6,*) '** cd1 **'
        write(6,603) cd1
        nloop=nn*2-1
        write(6,*) ' <<test item-2>> '
        do 41 j=51,nloop
         dx=0.d0
         dy=0.d0
         rx=0.d0
         do 40 i=2,nloop-2
           dxx1=da1(i+1)-da1(i-1)
           dxx2=da2(i-1)-da2(i+1)
           dxx3=dx + dprod(ra1(i),float(j))
           dx  =dxx3+dxx1-dxx2
           dy  =dmax1(da1(i),da2(i),dy,dxx2)
           rxx =ra1(i)+ra2(i)+ra3(i)
           if (rxx   .gt.rx) then
             rx=rxx
           endif
  40    continue
        da3(j)=dx
        da4(j)=dy
        ra3(j)=rx
  41    continue
        write(6,*) ' ** da3 **'
        write(6,601) (da3(i),i=51,100)
        write(6,*) ' ** da4 **'
        write(6,601) (da4(i),i=51,100)
        write(6,*) ' ** ra3 **'
        write(6,601) (ra3(i),i=51,100)
 600  format(1h ,10(10(i6,1x)/ ,1h ) )
 601  format(1h ,25(4(e17.9,1x)/ ,1h ) )
 602  format(1h ,25(4(d17.9,1x)/ ,1h ) )
 603  format(1h ,25(2('(',d15.7,',',d15.7,')',1x)/ ,1h ) )
      stop
      end
      subroutine init
      implicit real*8(d),logical*4(l),integer*2(h),complex*16(c)
      common /blk1/da1(100),da2(100),da3(100),da4(100)
      common /blk2/ra1(100),ra2(100),ra3(100),ra4(100)
      common /blk3/ld1(100),ld2(100),ld3(100),ld4(100)
      common /blk4/cd1(100),cd2(100),cd3(100),cd4(100)
      do 10 i=1,100
        da1(i)=1.
        da2(i)=dfloat(i)
        da3(i)=2.
        da4(i)=dfloat(mod(i,10))
  10  continue
      rx=1.
      do 20 i=1,100
        ra1(i)=float(i)
        ra2(i)=rx
        ra3(i)=100.-rx
        ra4(i)=1.
        rx=rx+0.5
  20  continue
      do 30 i=1,100
        cd1(i)=(1.d0,5.d0)
        cd2(i)=(2.d0,2.d0)
        cd3(i)=(3.d0,1.d0)
        cd4(i)=(4.d0,3.d0)
  30  continue
      do 40 i=1,100
        ld1(i)=.false.
        ld2(i)=mod(i,2).eq.1
        ld3(i)=mod(i,2).eq.0
        ld4(i)=mod(i,3).eq.0
  40  continue
      return
      end
