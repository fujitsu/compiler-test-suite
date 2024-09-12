      program main
      implicit real*8(d),logical*4(l),integer*2(h),complex*16(c)
      common /blk1/da1(50,50),da2(50,50),da3(50,50),da4(50,50)
      common /blk2/ra1(50,50),ra2(50,50),ra3(50,50),ra4(50,50)
      common /blk3/ld1(50,50),ld2(50,50),ld3(50,50),ld4(50,50)
      common /blk4/cd1(50,50),cd2(50,50),cd3(50,50),cd4(50,50)
      common /blk5/na1(50),na2(50),na3(50),na4(51)
      complex*8  ca1(50,50)
      dimension  db1(50),db2(50)
      equivalence (db1(1),cd1(1,1))
      equivalence (db2(1),cd1(1,2))
      data  ca1/2500*(1.0,2.0)/,nn/48/
      call init
      write(6,9999) ' <test item-1> '
      dx=1.d0
      do 10 j=1,20
       do 10 i=1,nn
         dx=da1(i,j)-da2(i,j)-dx+da3(i,j)
  10  continue
      write(6,9999) ' dx= ',dx
      do 11 j=1,20
       do 11 i=2,nn
         da1(1,j)=dmax1(da2(i,j),da1(1,j),da3(i,j))
  11  continue
      write(6,9999) ' ** da1 **'
      write(6,602) (da1(1,j),j=1,20)
      do 12 j=1,20
       dx=da1(j,1)
       do 12 i=1,nn
         dif=dx-da2(i,j)+da3(i,j)
         if (dif.gt.0.d0) then
           dx=da2(i,j)+da3(i,j)
         endif
  12  continue
      write(6,9999) ' dx= ',dx
      do 13 j=1,nn
        do 13 i=2,nn
          db1(j)=db1(j)+da2(1,na1(j))*da3(i,na1(j))
          dx1   =db2(j)-da3(i,j)
          if (ld1(i,j) .or. ld2(i,j)) then
            db2(j)=dx1+da4(i,j)
          endif
  13  continue
      write(6,9999) ' ** db1 ** '
      write(6,602) db1
      write(6,9999) ' ** db2 ** '
      write(6,602) db2
      write(6,9999) ' <test item-2> '
      do 20 j=1,5
       do 20 i=2,nn/2
         cdx=cd1(i,j)+cd2(i,j)
         cdy=cd3(i,j)**2.d0
         call sub1
         cd4(i,j)=cdx*cdy
         write(6,9999) 'cdx+cdy= ',cdx+cdy
  20  continue
      write(6,9999) ' ** cd4 **'
      write(6,603) ((cd4(i,j),i=1,20),j=1,5)
      hx=0
      do 21 j=1,5
       do 21 i=1,20
         ra1(i,j)=ra2(i,j)+ra3(i,j)
         hx=hx+na1(i)
  21  continue
      write(6,9999) ' hx= ',hx
      write(6,9999) ' ** ra1 **'
      write(6,601) ((ra1(i,j),i=1,20),j=1,5)
      write(6,9999) ' <test item-3> '
      dmx=0.d0
      imx=1
      do 30 j=2,nn
       do 30 i=2,nn
         lx=ld1(i,j).or.ld2(i,j)
         ly=ld3(i,j).eqv.ld4(i,j)
         if (lx .or. ly) then
           dx= da2(i,j)+da3(na1(i),j)
           if (dx.gt.dmx) then
             dmx=dx
             imx=i
            endif
         endif
  30  continue
      write(6,9999) '**no.1** dmx= ',dmx,' imx= ',imx
      dmx=0.d0
      imx=0
      dmn=99999.d0
      imn=0
      do 31 j=1,nn
       do 31 i=nn,2,-1
         if (ld1(j,na1(j)) .or. ld2(i,j)) then
           rx =rx + ra3(i,na3(i))+ra4(i,j)
           ry1=amax1(ry,ra1(i,j))
           ry2=amax1(ra2(i,j),ry1)
           ry3=amax1(ry2,imag(ca1(i,j)))
           ry =amax1(ra2(i,j),ry3)
           if (ld3(j,j) .or. ld4(i,j)) then
             if (dimag(cd4(i,j)).lt.dmn) then
               dmn=dimag(cd4(i,j))
               imn=i
             endif
           else
             if (dimag(cd4(i,j)) .gt.dmx) then
               dmx=dimag(cd4(i,j))
               imx=i
             endif
           endif
         endif
  31  continue
      write(6,9999) '**no.2** dmx= ',dmx,' imx= ',imx
      write(6,9999) '         dmn= ',dmn,' imn= ',imn
9999  format(g20.6)
 600  format(1h ,10(10(i6,1x)/ ,1h ) )
 601  format(1h ,25(4(e17.9,1x)/ ,1h ) )
 602  format(1h ,25(4(d17.9,1x)/ ,1h ) )
 603  format(1h ,25(2('(',d15.7,',',d15.7,')',1x)/ ,1h ) )
      stop
      end
      subroutine init
      implicit real*8(d),logical*4(l),integer*2(h),complex*16(c)
      common /blk1/da1(50,50),da2(50,50),da3(50,50),da4(50,50)
      common /blk2/ra1(50,50),ra2(50,50),ra3(50,50),ra4(50,50)
      common /blk3/ld1(50,50),ld2(50,50),ld3(50,50),ld4(50,50)
      common /blk4/cd1(50,50),cd2(50,50),cd3(50,50),cd4(50,50)
      common /blk5/na1(50),na2(50),na3(50),na4(50)
      do 10 j=1,50
      do 10 i=1,50
        da1(i,j)=1.d0
        da2(i,j)=2.d0
        da3(i,j)=3.d0
        da4(i,j)=dfloat(i)
        ra1(i,j)=1.0
        ra2(i,j)=3.0
        ra3(i,j)=float(j)
        ra4(i,j)=2.0
        ld1(i,j)=.false.
        ld2(i,j)=.false.
        ld3(i,j)=.false.
        ld4(i,j)=.false.
        cd1(i,j)=(1.d0,4.d0)
        cd2(i,j)=(2.d0,3.d0)
        cd3(i,j)=(3.d0,2.d0)
        cd4(i,j)=dcmplx(dfloat(j),dfloat(i))
  10  continue
      do 20 j=1,50,2
      do 20 i=2,50,2
        ld1(i,j)=.true.
        ld3(i-1,j)=.true.
  20  continue
      do 30 i=1,50
        na1(i)=i
        na2(i)=mod(i,3)+1
        na3(i)=51-i
        na4(i)=1
  30  continue
      return
      end
      subroutine sub1
      implicit real*8(d),logical*4(l),integer*2(h),complex*16(c)
      common /blk4/cd1(50,50),cd2(50,50),cd3(50,50),cd4(50,50)
      cd1(1,1)=(-1.d0,2.d0)
      return
      end
