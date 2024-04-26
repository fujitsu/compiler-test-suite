      SUBROUTINE sub(U,IG,JG,KG)
      DIMENSION U(-4:IG+4,-2:JG+2,-4:KG+4,3)
      DO 501 J=JG,JG+2
         IF (J.EQ.JG) THEN
            DO 610 K=-4,KG+4
               DO 610 I=-4,IG+4
                  U(I,JG  ,K,2)= 0.0D0
 610        CONTINUE
         ELSEIF (J.EQ.JG+1) THEN
            DO 611 K=-4,KG+4
               DO 611 I=-4,IG+4
                  U(I,JG+1,K,1)=-U(I,JG  ,K,1)
                  U(I,JG+1,K,2)= U(I,JG-1,K,2)
                  U(I,JG+1,K,3)=-U(I,JG  ,K,3)
 611        CONTINUE
         ELSEIF (J.EQ.JG+2) THEN
            DO 612 K=-4,KG+4
               DO 612 I=-4,IG+4
                  U(I,JG+2,K,1)=-U(I,JG-1,K,1)
                  U(I,JG+2,K,3)=-U(I,JG-1,K,3)
 612        CONTINUE
         ENDIF
 501  CONTINUE

      END

      program main
      parameter(IG=10,JG=10,KG=10)
      dimension U(-4:IG+4,-2:JG+2,-4:KG+4,3)
      u = 0
      call init(U,IG,JG,KG)
      call sub(U,IG,JG,KG)
      call output(U,IG,JG,KG)
      end

      subroutine init(U,IG,JG,KG)
      dimension U(-4:IG+4,-2:JG+2,-4:KG+4,3)
      m=0
      do l=1,3
         do k=1,KG
            do j=1,JG
               do i=1,IG
                  U(i,j,k,l) = m
                  m=m+1
               enddo
            enddo
         enddo
      enddo
      end

      subroutine output(U,IG,JG,KG)
      dimension U(-4:IG+4,-2:JG+2,-4:KG+4,3)
      do l=1,3
         do k=1,KG
            do j=1,JG
               do i=1,IG
                  if (U(i,j,k,l).ne.0) then
                     print *,i,j,k,l,":",U(i,j,k,l)
                  endif
               enddo
            enddo
         enddo
      enddo
      end
