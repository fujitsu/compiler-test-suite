      real*4 r4a(10)/10*0/,r4b(10)/1,2,3,4,5,6,7,8,9,10/
      real*8 r8a(10)/10*0/,r8b(10)/1,2,3,4,5,6,7,8,9,10/
      real*4 resa(10)/9,10,11,12,13,14,15,16,17,18/
      real*8 resb(10)/3,4,5,6,7,8,9,10,11,12/

      do i=1,10
         r4a(i)=r4b(i)+8.0_8
      enddo

      write(41,*)

      do i=1,10
         r8a(i)=r8b(i)+2.0_4
      enddo

      if (isub(r4a,r8a,resa,resb) .eq. 1) stop 1
      write(6,*) 'ok'
      end

      integer function isub(calca,calcb,resa,resb)
      real*4 calca(10),resa(10)
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
