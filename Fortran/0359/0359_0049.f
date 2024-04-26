      call c8
      call c16
      end

      subroutine c8
      COMPLEX*8 A2(10),B(10),E(10),A8(10),D(10),Y
C
      j =1
      do i=1,10
         b(i) = cmplx(j+10,j+11)
         d(i) = cmplx(j+20,j+21)
         y = cmplx(i-2,i+4)
         j=j+2
         if (i.le.5) then
            e(i) = cmplx(i,j)
         endif
      enddo

      DO 10 I = 1 , 10
         A2(I) = B(I) + E(5) 
         A8(I) = B(I) + E(5) -3.0  -y-D(I) 
 10   CONTINUE
      PRINT *,A2
      PRINT *,A8
      END

      subroutine c16
      COMPLEX*16 A2(10),B(10),E(10),A8(10),D(10),Y
C
      j =1
      do i=1,10
         b(i) = dcmplx(j+10,j+11)
         d(i) = dcmplx(j+20,j+21)
         y = cmplx(i-2,i+4)
         j=j+2
         if (i.le.5) then
            e(i) = dcmplx(i,j)
         endif
      enddo

      DO 10 I = 1 , 10
         A2(I) = B(I) + E(5) 
         A8(I) = B(I) + E(5) -3.0  -y-D(I) 
 10   CONTINUE
      PRINT *,A2
      PRINT *,A8
      END
