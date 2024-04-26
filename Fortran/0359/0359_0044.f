      call c8
      call c16
      end

      subroutine c8
      COMPLEX*8 B(10),AB(10),Y,Z,AA(10)
      DATA Y/(4.0,5.0)/,Z/(6.,7.)/

      do i=1,10
         b(i) = cmplx(real(i),real(i+10))
      enddo

      DO 10 I = 1 , 10
         AA(I) = b(i)+y-z+2.0
         AB(I) = b(i)+y-z+2.0
 10   CONTINUE
      PRINT *,AA
      PRINT *,AB

      DO I = 1 , 10
         AA(I) = b(i)+y+(2.,0.)-z
      enddo
      PRINT *,AA

      DO I = 1 , 10
         AA(I) = b(i)+(2.,0.)+y-z
      enddo
      PRINT *,AA

      DO I = 1 , 10
         AA(I) = b(i)+1+z
         AB(I) = b(i)+z
      enddo
      PRINT *,AA
      PRINT *,AB

      DO I = 1 , 10
         AA(I) = b(i)+z
         AB(I) = b(i)+2+z
      enddo
      PRINT *,AA
      PRINT *,AB

      DO I = 1 , 10
         AA(I) = b(i)+1+z
         AB(I) = b(i)+2+z
      enddo
      PRINT *,AA
      PRINT *,AB

      END

      subroutine c16
      COMPLEX*16 B(10),AB(10),Y,Z,AA(10)
      DATA Y/(4.0,5.0)/,Z/(6.,7.)/

      do i=1,10
         b(i) = dcmplx(real(i),real(i+10))
      enddo

      DO 10 I = 1 , 10
         AA(I) = b(i)+y-z+2.0
         AB(I) = b(i)+y-z+2.0
 10   CONTINUE
      PRINT *,AA
      PRINT *,AB

      DO I = 1 , 10
         AA(I) = b(i)+y+(2.,0.)-z
      enddo
      PRINT *,AA

      DO I = 1 , 10
         AA(I) = b(i)+(2.,0.)+y-z
      enddo
      PRINT *,AA

      DO I = 1 , 10
         AA(I) = b(i)+1+z
         AB(I) = b(i)+z
      enddo
      PRINT *,AA
      PRINT *,AB

      DO I = 1 , 10
         AA(I) = b(i)+z
         AB(I) = b(i)+2+z
      enddo
      PRINT *,AA
      PRINT *,AB

      DO I = 1 , 10
         AA(I) = b(i)+1+z
         AB(I) = b(i)+2+z
      enddo
      PRINT *,AA
      PRINT *,AB

      END
