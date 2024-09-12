      program main
      implicit  real*8(a-b,d,o-z),logical*4(l),complex*16(c)
      dimension  db10(20,20,20),db20(20,20,20),db30(20,20,20)
      dimension   cd10(20,20),cd20(20,20),cd30(20,20)
      parameter  (jc1=1,jc2=2,jc3=3,jc4=10,jc5=20)
      data     db10/8000*4.d0/,db20/8000*5.d0/,db30/8000*3.d0/
      data     cd30,cd20/400*(-1.d0,2.d0),400*(3.d0,-2.d0)/
      data     n4/15/
      do 30 i=jc1,jc5
       do 30 j=jc1,jc5
        do 30 k=jc4,n4
         dx = dreal(cd30(i,j)) - dimag(cd20(i,j))
         dy = dmin1(db20(i,j,k),db10(i,j,k+jc2))+dimag(cd30(i,j))
         if ( dx .gt. dy ) then
           dz = dx-db30(i,j,k)
           db20(i,j,k+2) = dy
         else if ( dx .gt. dimag(cd20(i,j)) ) then
           dz = dy*dreal(cd20(i,j))
           db10(i,j,k) = dx
         else
           dz = 1.d0
         endif
         cd10(i,j) = dcmplx(dx,dz)
         cd20(i,j) = dcmplx(dz,dy)
  30  continue
      write(6,*) ' (cd10) ',((cd10(k1,k2),k1=1,10),k2=1,10)
      write(6,*) ' (cd20) ',((cd20(k1,k2),k1=1,10),k2=1,10)
      stop
      end
