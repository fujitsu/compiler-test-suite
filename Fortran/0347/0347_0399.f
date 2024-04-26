      program main
      implicit  real*8(a-b,d,o-z),complex*16(c),logical*4(l)
      dimension   da10(20,20),da20(20,20),da30(20,20),
     *            db10(20,20),db20(20,20),
     *            ld10(20,20),ld20(20,20),ld30(41,40)
      dimension   cd10(20,20),cd20(20,20),cd30(20,20)
      equivalence (cd10(1,1),db10(3,1)),(db10(1,1),dx),(db10(2,1),dy)
      equivalence (ld10(1,1),ld30(1,1)),(ld20(20,20),ld30(40,40))
      equivalence (db20(1,1),da30(1,1)),(ld30(41,40),lx)

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
       n2=i1-1
       cd30(i1,1) = dcmplx(dx,dy)
       dy = 0.d0
       do 10 i2=1,nx
        if ( ld10(i1,i2) )  then
         cd10(i1,i2) = cd20(i1,i2+1)+cd30(i1,i2)
         n1 = n1+1
         da10(i1,i2) = da20(i1,n1)+dx
         dy = dy + da20(i1,n1)
         if (n1.gt.5) then
           n2= n2+1
           cd30(i1+1,n2) = cd10(i1,i2+1)+cd20(i1,i2+1)
           da20(i1+1,i2) = da10(i1,i2+1)+db20(i1,n1)
          endif
         endif
         da10(i1,i2+1) = da20(i1,i2+1) - da30(i1,i2+1)
  10  continue
      write(6,*) ' (da10) ',((da10(i,j),i=1,10),j=1,10)
      write(6,*) ' (da20) ',((da20(i,j),i=1,10),j=1,10)
      write(6,*) ' (cd10) ',((cd10(i,j),i=1,10),j=1,10)
      write(6,*) ' (cd30) ',((cd30(i,j),i=1,10),j=1,10)
      do 20 j1=1,nn
       n1=j1-1
       n2=j1+1
       do 20 j2=1,nx
        da30(j1,j2) = dimag(cd10(j1,j2))+dreal(cd10(j1,j2))
        lx = ld10(j1,j2) .or. .not.ld20(j1,j2)
        if ( lx ) then
          da20(j1,j2) = dreal(cd10(j1,n1+1))-dimag(cd20(j1,j2))
          n1 =  n1 + 1
          ld20(j1,j2) = .not.ld10(j1,j2) .or. lx
          da10(n1,j1) = da20(j1,j2)*dimag(cd20(j1,j2))
          dx1 = db20(n1,j2) - dx
          dy1 = db20(n1,j2) - dy
          if ( dx1-dy1 ) 30,30,40
 30         n2 = n2 + 1
            ld20(j1+1,n2) = .not.ld10(j1,j2)
            cd30(j1,n2) = dcmplx(dx1,dy1)-cd20(j1,n2)
 40       continue
        endif
        ld10(j1,j2) = .not.ld10(j1,j2) .and. lx
 20   continue
      write(6,*) ' (da10) ',((da10(i,j),i=1,10),j=1,10)
      write(6,*) ' (da20) ',((da20(i,j),i=1,10),j=1,10)
      write(6,*) ' (da30) ',((da30(i,j),i=1,10),j=1,10)
      write(6,*) ' (cd30) ',((cd30(i,j),i=1,10),j=1,10)
      write(6,*) ' (ld10) ',((ld10(i,j),i=1,10),j=1,10)
      write(6,*) ' (ld20) ',((ld20(i,j),i=1,10),j=1,10)
      stop
      end
