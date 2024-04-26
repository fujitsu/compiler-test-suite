      call c8
      call c16
      end

      subroutine c8
      real*4 r4(10)/5,6,7,8,1,2,3,4,11,13/
      complex*8 c2(10),c5(10)
      data c2/1,2,3,4,5,6,7,8,9,10/

      j = 1
      do i=1,10
         c5(i) = 0
         c2(i) = cmplx(j,j+10)
         j=j+2
      enddo

      DO  J=1,8
         DO  I=1,8
            C5(j)=2+C2(I)
         enddo
      enddo
      WRITE(6,*) c5
      DO  J=1,9
         DO  I=1,9
            C5(j)=2+C2(I)
         enddo
      enddo
      WRITE(6,*) c5
      DO  J=1,8
         DO  I=1,9
            C5(j)=2+C2(I)
         enddo
      enddo
      WRITE(6,*) c5
      DO  J=1,9
         DO  I=1,8
            C5(j)=2+C2(I)
         enddo
      enddo
      WRITE(6,*) c5

      DO  J=1,8
         DO  I=1,8
            C5(j)=2+C2(I)-r4(i)
         enddo
      enddo
      WRITE(6,*) c5
      DO  J=1,9
         DO  I=1,9
            C5(j)=2+C2(I)-r4(i)
         enddo
      enddo
      WRITE(6,*) c5
      DO  J=1,8
         DO  I=1,9
            C5(j)=2+C2(I)-r4(i)
         enddo
      enddo
      WRITE(6,*) c5
      DO  J=1,9
         DO  I=1,8
            C5(j)=2+C2(I)-r4(i)
         enddo
      enddo
      WRITE(6,*) c5
      END

      subroutine c16
      real*8 r4(10)/5,6,7,8,1,2,3,4,11,13/
      complex*16 c2(10),c5(10)

      j = 1
      do i=1,10
         c5(i) = 0
         c2(i) = cmplx(j,j+10)
         j=j+2
      enddo
      DO  J=1,8
         DO  I=1,8
            C5(j)=2+C2(I)
         enddo
      enddo
      WRITE(6,*) c5
      DO  J=1,9
         DO  I=1,9
            C5(j)=2+C2(I)
         enddo
      enddo
      WRITE(6,*) c5
      DO  J=1,8
         DO  I=1,9
            C5(j)=2+C2(I)
         enddo
      enddo
      WRITE(6,*) c5
      DO  J=1,9
         DO  I=1,8
            C5(j)=2+C2(I)
         enddo
      enddo
      WRITE(6,*) c5

      DO  J=1,8
         DO  I=1,8
            C5(j)=2+C2(I)-r4(i)
         enddo
      enddo
      WRITE(6,*) c5
      DO  J=1,9
         DO  I=1,9
            C5(j)=2+C2(I)-r4(i)
         enddo
      enddo
      WRITE(6,*) c5
      DO  J=1,8
         DO  I=1,9
            C5(j)=2+C2(I)-r4(i)
         enddo
      enddo
      WRITE(6,*) c5
      DO  J=1,9
         DO  I=1,8
            C5(j)=2+C2(I)-r4(i)
         enddo
      enddo
      WRITE(6,*) c5
      END
