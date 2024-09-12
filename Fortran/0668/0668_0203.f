      program main
      implicit real*8(d),logical*4(l),integer*2(h),complex*16(c)
      common /blk1/da1(50,50),da2(50,50),da3(50,50),da4(50,50)
      common /blk2/ra1(50,50),ra2(50,50),ra3(50,50),ra4(50,50)
      common /blk3/ld1(50,50),ld2(50,50),ld3(50,50),ld4(50,50)
      common /blk4/cd1(50,50),cd2(50,50),cd3(50,50),cd4(50,50)
      common /blk5/na1(50),na2(50),na3(50),na4(50)
      complex*8  ca1(50,50),ca2(50,50),ca3(50,50),ca4(50,50)
      complex*8  cax,cay
      dimension  db1(50),db2(50)
      equivalence (db1(1),da1(1,1))
      equivalence (db2(1),cd1(1,1))
      data  ca1,ca2,ca3,ca4/5000*(1.0,2.0),5000*(2.,3.)/,nn/48/
      call init
      do 10 j=2,nn/2
       do 10 i=2,nn
         dx1 = da1(i,j-1)+da2(na1(i),na2(i))
         dx2 = da3(i,j)+da4(j,na3(i))
         if (ld1(i,j) .eqv. ld2(j,j)) then
           ra1(i,j) = ra2(i-1,j)+ra3(i-1,j)
           da1(na1(1),j+1)= dx1*dx2
           ld1(i,j)=ld1(na1(1),j+1).or.ld2(i,j)
         else
           ra2(i,j)=ra1(i,j)+ra4(na1(1),na2(j))
           da1(na1(i),j)= dx1+dx2
           ld1(i,j)=ld2(i,j) .eqv. ld3(j,na2(i))
         endif
         cd1(i,j)=dcmplx(dx1,dx2)*cd2(i,j)
  10  continue
      write(6,*) ' ** da1 ** '
      write(6,602) ((da1(i,j),i=1,20),j=1,20)
      write(6,*) ' ** ra1 ** '
      write(6,601) ((ra1(i,j),i=1,20),j=1,20)
      write(6,*) ' ** cd1 ** '
      write(6,603) ((cd1(i,j),i=1,20),j=1,20)
      write(6,*) ' ** ld1 ** '
      write(6,*) ((ld1(i,j),i=1,20),j=1,20)
 9999 continue
 600  format(1h ,10(10(i6,1x)/ ,1h ) )
 601  format(1h ,25(4(e17.9,1x)/ ,1h ) )
 602  format(1h ,25(4(d17.9,1x)/ ,1h ) )
 603  format(1h ,25(2('(',d15.7,',',d15.7,')',1x)/ ,1h ) )
      do 20 j=26,nn
       do 20 i=2,j-1
         dx1=dimag(cd2(i,j))+dreal(cd1(i,j))
         da2(1,na1(j))=da2(1,na1(j))+ da3(i,j)+da4(i,j)
         if (dx1.gt.0.d0 .and. ld3(i,j)) then
           dx1=dimag(cd4(i,na3(i)))-dimag(cd3(1,na2(i)))
           dx1=dabs(dx1)
           dx1=dmin1(dx1,da3(i,j))
           if ( ld4(1,na3(j)) ) then
             cdx= cdsqrt(cd3(i,j))
           else
             cdx= cd3(j,1)+dcmplx(dsqrt(dx1),1.d0)
           endif
           dx1= dmax1(dx1,da1(i,j))
         else
           dx1=dimag(cdexp(cd2(i,j)+cd3(i,j)))+dx1
           cdx=cdsin(cd4(i,j))
         endif
         da2(j,i)=dx1 + dimag(cdx)-dreal(cdx)
  20  continue
      write(6,*) ' ** da2 ** '
      write(6,602) ((da2(i,j),i=1,50),j=1,50)
      do 30 j=2,nn/2
       cay=(0.,0.)
       do 30 i=2,nn
        ca1(i,j)=ca2(i+1,j)+ca3(i-1,j)-ca4(i,j)
        ca2(i,j)=ca1(i-1,j)+ca3(i,j)*ca4(i-1,j)
        cax = ca1(i,j)-ca2(j,i)
        ca3(i,j)=cmplx(ra1(i,j)-ra2(1,na1(j)))
        cay=cay+cax-ca1(i,j)
        ca4(i+1,j)=ca2(i+1,j)-ca1(i,j)
  30  continue
      write(6,*) ' ** cay ** ',cay
      write(6,*) ' ** ca4 ** '
      write(6,602) ((ca4(i,j),i=1,50),j=1,20)
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
        cd4(i,j)=(4.d0,1.d0)
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
