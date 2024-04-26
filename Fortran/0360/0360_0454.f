      real*4 r4a(10),r4b(10)/10,9,8,7,6,5,4,3,2,1/,resa(10)
      real*8 r8a(10),r8b(10),r8c(10),resb(10)
      data r8a/10*0/,r8b/1,2,3,4,5,6,7,8,9,10/,r8c/10*3/
      data resa/7,6,5,4,3,2,1,0,-1,-2/
      data resb/4,5,6,7,8,9,10,11,12,13/

      do i=1,10
         r4a(i) = r4b(i) - 3
         r8a(i) = r8b(i) + r8c(i)
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
