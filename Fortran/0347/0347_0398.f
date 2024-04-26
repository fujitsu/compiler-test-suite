      program main
      implicit  real*8(a-b,d,o-z),complex*16(c),logical*4(l)
      dimension   da10(20,20),da20(20,20),da30(20,20),
     *            ld10(20,20),ld20(20,20)
      dimension   cd10(20,20),cd20(20,20),cd30(20,20)

      data     da10/400*1.0d0/,da20/400*2.d0/,da30/400*3.d0/
      data     ld10/400*.false./,ld20/400*.false./
      data     cd10,cd20/400*(-1.d0,2.d0),400*(3.d0,-2.d0)/
      data     cd30/400*(2.d0,0.1d0)/
      data     nn/7/,nx/10/
      do 5 i=1,20,2
       do 5 j=2,20,2
        ld20(i,j)=.true.
  5     ld10(i,j)=.true.
      do 10 i1=1,nn
       n1=i1
       do 10 i2=1,nx
         dx = da10(i1,i2) + da20(i1,i2)
         dy = da30(i1,i2) + dimag(cd10(i1,i2))
         if ( dx.gt.dy ) then
          if ( ld10(i1,i2) ) then
            n1=n1+1
            da20(i1,i2+1) = dreal(cd30(n1,i1))+dy
          else
            da30(i1,i2) = da20(i1,nx+1)-dx
            cd10(i1,i2) = cd20(n1,i2)+dcmplx(dx,dy)
          endif
         endif
         da10(i1,i2+1) = da20(i1,i2+1) - da30(i1,i2+1)
  10  continue
      write(6,*) ' (da10) ',((da10(i,j),i=1,10),j=1,10)
      write(6,*) ' (da20) ',((da20(i,j),i=1,10),j=1,10)
      write(6,*) ' (cd10) ',((cd10(i,j),i=1,10),j=1,10)
      do 20 j1=1,nn
       n1=j1-1
       n2=j1+1
       do 20 j2=1,nx
        da30(j1,j2) = dimag(cd10(j1,j2))+dreal(cd10(j1,j2))
        lx = ld10(j1,j2) .or. .not.ld20(j1,j2)
        if ( lx ) then
          dx = da10(j1,j2)-da30(j1,j2)
          n1 =  n1 + 1
          dy = da20(n1,j1)+da30(j1,j2)
          da20(n1,j1) = da10(j1,j2)*dimag(cd20(j1,j2))
          if ( dx-dy ) 30,30,40
 30         n2 = n2 + 1
            ld20(j1+1,n2) = lx
            cd30(j1,j2) = dcmplx(dx,dy)
 40       continue
        endif
        ld10(j1,j2) = .not.lx
 20   continue
      write(6,*) ' (da30) ',((da30(i,j),i=1,10),j=1,10)
      write(6,*) ' (cd30) ',((cd30(i,j),i=1,10),j=1,10)
      write(6,*) ' (ld10) ',((ld10(i,j),i=1,10),j=1,10)
      write(6,*) ' (ld20) ',((ld20(i,j),i=1,10),j=1,10)
      stop
      end
