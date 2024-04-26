C
      integer*4  I41(10)/1,2,3,4,5,6,7,8,9,10/,IS1/10/
      integer*4  resb(10)
      REAL*8     R81(10),resa(10)
      data resa/11,12,13,14,15,16,17,18,19,20/
      data resb/11,12,13,14,15,16,17,18,19,20/
C
      DO I=1,10

        R81(I) =  I41(I)+IS1
      enddo
      if (isub(i41,r81,i41,resa) .eq. 1) stop 1

      DO I=1,10

        I41(I) =  R81(I)
      enddo

      if (isub(i41,r81,resb,resa) .eq. 1) stop 2

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
