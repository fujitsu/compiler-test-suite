      real*4 r4a(10),r4c(10),resa(10)
      real*8 r8a(10),r8b(10),r8c(10),resb(10)
      data r4a/10*0/,r4c/3,4,5,6,7,8,9,0,1,2/
      data r8b/10,11,12,13,14,15,16,17,18,19/
      data r8c/1,2,3,4,5,6,7,8,9,10/
      data r8a/10*0/
      data resa/3,4,5,6,7,8,9,10,11,12/
      data resb/13,15,17,19,21,23,25,17,19,21/

      do i=1,10
         r4a(i) = 2 + r8c(i)
         r8a(i) = r8b(i) + r4c(i)
      enddo

      if (isub(r4a,r8a,resa,resb) .eq. 1) stop 1
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
