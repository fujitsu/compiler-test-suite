      REAL r4a(10)/1,2,3,4,5,6,7,8,9,10/,rr4(1),r4x(4),resa(4)
      REAL r4b(10)/11,12,13,14,15,16,17,18,19,20/
      REAL*8 r8a(10)/1,2,3,4,5,6,7,8,9,10/
      REAL*8 r8b(10)/11,12,13,14,15,16,17,18,19,20/
      real*8 rr8(1),r8x(4),resb(4)
      data resa/152,188,210,265/
      data resb/152,116,210,155/

      rr8(1) = 0
      DO  I=1,8
         rr8(1) = rr8(1) + r4a(i) + r4b(i)
      enddo
      r8x(1) = rr8(1)

      rr4(1) = 0
      DO  I=1,8
         rr4(1) = rr4(1) + r8a(i) + r8b(i)
      enddo
      r4x(1) = rr4(1)

      rr8(1) = 0
      DO  I=1,8
         rr8(1) = rr8(1) + r4a(i) + r4b(i) - r8a(i)
      enddo
      r8x(2) = rr8(1)

      rr4(1) = 0
      DO  I=1,8
         rr4(1) = rr4(1) + r8a(i) + r8b(i) + r4a(i)
      enddo
      r4x(2) = rr4(1)

      rr8(1) = 0
      DO  I=1,10
         rr8(1) = rr8(1) + r4a(i) + r4b(i)
      enddo
      r8x(3) = rr8(1)

      rr4(1) = 0
      DO  I=1,10
         rr4(1) = rr4(1) + r8a(i) + r8b(i)
      enddo
      r4x(3) = rr4(1)

      rr8(1) = 0
      DO  I=1,10
         rr8(1) = rr8(1) + r4a(i) + r4b(i) - r8a(i)
      enddo
      r8x(4) = rr8(1)

      rr4(1) = 0
      DO  I=1,10
         rr4(1) = rr4(1) + r8a(i) + r8b(i) + r4a(i)
      enddo
      r4x(4) = rr4(1)

      if (isub(r4x,r8x,resa,resb) .eq. 1) stop 1
      write(6,*) 'ok'
      end

      integer function isub(calca,calcb,resa,resb)
      real calca(4),resa(4)
      real*8 calcb(4),resb(4)

      isub = 0
      do i=1,4
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
