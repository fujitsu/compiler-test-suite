      
      real*8 r8a(10)/10*0/,resa(10),resb(10),resc(10)
      real r4a(10)/2,4,6,8,10,9,7,5,3,1/
      data resa/0,6,8,10,12,11,9,7,5,3/
      data resb/0,6,9,11,13,12,10,8,6,4/
      data resc/0,6,9,12,14,13,11,9,7,5/
      nobs = ifunc(10)

      do i=2,nobs
         r8a(i) = r4a(i) + 2
      end do

      if (isub(r4a,r8a,r4a,resa) .eq. 1) stop 1

      do i=3,nobs
         r8a(i) = r4a(i) + 3
      end do

      if (isub(r4a,r8a,r4a,resb) .eq. 1) stop 2

      do i=4,nobs
         r8a(i) = r4a(i) + 4
      end do

      if (isub(r4a,r8a,r4a,resc) .eq. 1) stop 3
      write(6,*) 'ok'
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
        
      integer function ifunc(nn)
      ifunc = nn
      return
      end

