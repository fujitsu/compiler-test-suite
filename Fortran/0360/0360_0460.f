      real*8 r8a(10)/2,4,6,8,10,9,7,5,3,1/
      real r4a(10)/10*0/,resa(10),resb(10),resc(10)
      data resa/0,6,8,10,12,11,9,7,5,3/
      data resb/0,6,9,11,13,12,10,8,6,4/
      data resc/0,6,9,12,14,13,11,9,7,5/

      do i=2,10
         r4a(i) = r8a(i) + 2
      end do

      if (isub(r4a,r8a,resa,r8a) .eq. 1) stop 1

      do i=3,10
         r4a(i) = r8a(i) + 3
      end do

      if (isub(r4a,r8a,resb,r8a) .eq. 1) stop 1

      do i=4,10
         r4a(i) = r8a(i) + 4
      end do

      if (isub(r4a,r8a,resc,r8a) .eq. 1) stop 1
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

