      program main
      dimension iry31(12,12,12),iry32(12,12,12)
      ia=0
      i1=10
      i2=10
      call sub1(i1,i2,iry31,iry32,ia)
      do 10 i=1,10
      do 10 j=1,10
      do 10 k=1,10
         if (iry31(i,j,k).ne.iry32(i,j,k)) then
         write(6,*) 'sub1  *** ng1 ***'
         stop
         endif
   10 continue
      if (ia.ne.24000) then
      write(6,*) ia,'sub1  *** ng2 ***'
      stop
      endif
      write(6,*) 'sub1  *** ok ***'
      call sub2(i1,iry31,iry32,ia)
      do 20 i=1,10
      do 20 j=1,10
      do 20 k=1,10
         if (iry31(i,j,k).ne.iry32(i,j,k)) then
         write(6,*) 'sub2  *** ng1 ***'
         stop
         endif
   20 continue
      if (ia.ne.24) then
      write(6,*) ia,'sub2  *** ng2 ***'
      stop
      endif
      write(6,*) 'sub2  *** ok ***'
      call sub3(i1,i2,iry31,ia)
      do 30 i=1,10
      do 30 j=1,10
      do 30 k=1,10
         if (iry31(i,j,k).ne.12) then
         write(6,*) 'sub3  *** ng1 ***'
         stop
         endif
   30 continue
      if (ia.ne.24) then
      write(6,*) ia,'sub3  *** ng2 ***'
      stop
      endif
      write(6,*) 'sub3  *** ok ***'
      stop
      end
      subroutine sub1(k,kk,j3,j4,i2)
      dimension j1(12),j2(12,12),j3(12,12,12),j4(12,12,12)
      i1=12
      l=2
      do 20 i=1,k,1
         j1(i)=i1
         do 15 j=1,k,1
            j2(i,j)=i1
            do 10 ij=1,kk,1
               j3(i,j,ij)=i1
   10 continue
            do 11 ik=1,k,1
               j4(i,j,ik)=i1
               i2=i2+(j1(i)+j2(i,j))
   11 continue
   15 continue
   20 continue
      return
      end
      subroutine sub2(k,j3,j4,i2)
      dimension j1(12),j2(12,12),j3(12,12,12),j4(12,12,12)
      i1=12
      l=2
      do 20 i=1,k,1
         j1(i)=i1
         do 15 j=1,k,1
            j2(i,j)=i1
            do 10 ij=1,k,1
               j3(i,j,ij)=i1
   10 continue
            do 11 ik=1,k,1
               j4(i,j,ik)=i1
   11 continue
   15 continue
   20 continue
      i2=j1(i-1)+j2(i-1,j-1)
      return
      end
      subroutine sub3(k,kk,j3,i2)
      dimension j1(12),j2(12,12),j3(12,12,12),j4(12)
      i1=12
      l=2
      do 20 i=1,k,1
        j1(i)=i1
      do 15 j=1,kk,1
        j2(i,j)=i1
      do 10 ij=1,k,1
        j3(i,j,ij)=i1
   10 continue
   15 continue
   20 continue
      i2=j1(i-1)+j2(i-1,j-1)
      return
      end
