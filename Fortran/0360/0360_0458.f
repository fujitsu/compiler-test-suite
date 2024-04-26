      real*8 r8a(10),r8b(10),r8c(10),resb(10),resd(10)
      integer*4 i4a(10),i4b(10),i4c(10),resa(10),resc(10)
      data r8b/1,2,3,4,5,6,7,8,9,10/
      data r8c/5,6,7,8,9,10,11,12,13,14/
      data i4b/9,10,11,12,13,14,15,16,17,18/
      data i4c/-7,-9,-11,-13,-15,-17,-19,-21,-23,-25/
      data resa/2,1,0,-1,-2,-3,-4,-5,-6,-7/
      data resb/6,8,10,12,14,16,18,20,22,24/
      data resc/14,16,18,20,22,24,26,28,30,32/
      data resd/-6,-7,-8,-9,-10,-11,-12,-13,-14,-15/

      do i=1,10
        r8a(i) = r8b(i) + r8c(i) 
        i4a(i) = i4b(i) + i4c(i) 
      enddo
      if (isub(i4a,r8a,resa,resb) .eq. 1) stop 1

      do i=1,10
        r8a(i) = r8b(i) + i4c(i) 
        i4a(i) = i4b(i) + r8c(i) 
      enddo

      if (isub(i4a,r8a,resc,resd) .eq. 1) stop 2
      write(6,*) 'ok'
      end

      integer function isub(calca,calcb,resa,resb)
      integer calca(10),resa(10)
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
