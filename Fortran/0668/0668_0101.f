      program main
      implicit real*8(d),logical*4(l),integer*2(h),complex*8(c)
      common /blk1/da1(100),da2(100),da3(100),da4(100)
      common /blk2/ra1(100),ra2(100),ra3(100),ra4(100)
      common /blk3/ld1(100),ld2(100),ld3(100),ld4(100)
      common /blk4/ca1(100),ca2(100),ca3(100),ca4(100)
      complex*16   cd1(100),cd2(100),cd3(100),cd4(100)
      dimension  dummy(2)
      equivalence (cd1(1),da1(1))
      equivalence (cd2(1),dummy(1)),(dummy(1),dx),(dummy(2),dy)
      data  cd2,cd3,cd4/300*(1.d0,2.d0)/
      call init
      nloop=99
 1111 continue
      if (nloop.gt.100) goto 9999
        write(6,*) ' iteration cont  = ',nloop-98
        n1=0
        n2=nloop
        dx=0.d0
        dy=0.d0
        do 10 i=2,60
          n1=n1+1
          da1(n1)=da2(n2)+da3(i)
          dx=dx+dimag(cd3(i))-da4(i)
          n2=n2-1
          dy=dmax1(dy,dreal(cd4(i)),dfloat(i))
          ra1(i)=ra1(i)+ra2(iabs(n1-n2)+1)
  10    continue
        write(6,*) ' dx= ',dx
        write(6,*) ' dy= ',dy
        write(6,*) ' ** da1 ** '
        write(6,601) da1
        write(6,*) ' ** ra1 ** '
        write(6,601) ra1
        n1=nloop/2
        n2=n1+10
        dx=0.d0
        dy=0.d0
        do 20 j=2,n1
         do 20 i=j,n2
           dxx1 = dmod(da3(i),da3(1))+da4(i)
           dx   = dx + dxx1
           dxx2 = da4(i) - dy
           dy  = dxx1+dimag(cd1(i))-dxx2
           if (ld1(i)  .or.  .not.ld2(i)) then
             cd1(i)=cd4(i)+cd3(i)
           else
             cd1(i)=cd4(i)*cd3(1)
           endif
  20    continue
        write(6,*) ' dx= ',dx
        write(6,*) ' dy= ',dy
        write(6,*) ' ** cd1 ** '
        write(6,601) cd1
        n1=nloop-1
        do 30 i=5,n1
          ld2(i) = ld1(i-2) .eqv. ld3(i-1)
          if (ld2(i+1)) then
            da3(i) = dsqrt(dabs(dimag(cd2(i))+dreal(cd2(i-1))))
            if (ld3(i) .or. real(cd4(i)).gt.10.d0) then
              ld3(i) = ld1(i) .or. ld4(i)
              da1(i) = da1(i+1)+ra1(i)
            else
              ld3(i) = .true.
              ca1(i) = ca2(i) + ca3(i)
            endif
            cd2(i) = cd4(i)*cd2(i)
            ca2(i) = ca1(i+2) + ca3(i)
          endif
  30    continue
        write(6,*) ' ld2= ',ld2
        write(6,*) ' ld3= ',ld3
        write(6,*) ' ** cd2 ** '
        write(6,601) cd2
        nloop=nloop+1
      goto 1111
 9999 continue
 600  format(1h ,10(10(i6,1x)/ ,1h ) )
 601  format(1h ,20(5(e12.5,1x)/ ,1h ) )
      stop
      end
      subroutine init
      implicit real*8(d),logical*4(l),integer*2(h),complex*8(c)
      common /blk1/da1(100),da2(100),da3(100),da4(100)
      common /blk2/ra1(100),ra2(100),ra3(100),ra4(100)
      common /blk3/ld1(100),ld2(100),ld3(100),ld4(100)
      common /blk4/ca1(100),ca2(100),ca3(100),ca4(100)
      do 10 i=1,100
        da1(i)=1.d0
        da2(i)=2.d0
        da3(i)=3.d0
        da4(i)=dfloat(i)
        ra1(i)=-1.0
        ra2(i)=i-1.0
        ra3(i)=1.0-float(i)
        ra4(i)=2.0
        ld1(i)=.false.
        ld2(i)=.false.
        ld3(i)=.false.
        ld4(i)=.false.
        ca1(i)=(1.,4.)
        ca2(i)=(2.,3.)
        ca3(i)=(3.,2.)
        ca4(i)=(4.,1.)
  10  continue
      return
      end
