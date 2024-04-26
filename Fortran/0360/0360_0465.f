      REAL r4a(10)/1,2,3,4,5,6,7,8,9,10/
      real resd(10),rese(10),resf(10)
      REAL*8 r8a(10)/10*0/
      REAL*8 r8b(10),resa(10),resb(10),resc(10)
      data r8b/1,3,5,7,9,2,4,6,8,10/
      data resa/1,2,3,4,5,6,7,8,9,10/
      data resb/2,4,6,8,10,12,14,16,18,20/
      data resc/0,3,6,9,12,15,18,21,24,27/
      data resd/1,2,3,4,5,6,7,8,9,10/
      data rese/2,5,8,11,14,8,11,14,17,20/
      data resf/1,6,11,16,21,17,22,27,32,37/

      n1 = ifunc(1)
      n10 = ifunc(10)

      DO  I=1,10
         r8a(i) = i
      enddo
      if (isub(r4a,r8a,r4a,resa) .eq. 1) stop 1

      DO  I=n1,n10
         r8a(i) = i+r4a(i)
      enddo
      if (isub(r4a,r8a,r4a,resb) .eq. 1) stop 2

      n = 0
      DO  I=1,10
         r8a(i) = n
         n = n + 3
      enddo
      if (isub(r4a,r8a,r4a,resc) .eq. 1) stop 3

      DO  I=1,10
         r4a(i) = i 
      enddo
      if (isub(r4a,r8b,resd,r8b) .eq. 1) stop 4

      DO  I=n1,n10
         r4a(i) = i+r8b(i)
      enddo
      if (isub(r4a,r8b,rese,r8b) .eq. 1) stop 5

      n = 0
      DO  I=1,10
         r4a(i) = n + r8b(i)
         n = n + 3
      enddo
      if (isub(r4a,r8b,resf,r8b) .eq. 1) stop 6

      write(6,*) 'ok'
      END

      integer function ifunc(nn)
      ifunc = nn
      return
      end

      integer function isub(calca,calcb,resa,resb)
      real calca(10),resa(10)
      real*8 calcb(10),resb(10)

      isub = 0
      do i=1,10
      if (calca(i).ne.resa(i) .or. calcb(i).ne.resb(i)) then
         write(6,*) "calca = ",calca
         write(6,*) "resa  = ",resa
         write(6,*) "calcb = ",calcb
         write(6,*) "resb  = ",resb
         isub = 1
         return
      endif
      enddo
      return
      end
