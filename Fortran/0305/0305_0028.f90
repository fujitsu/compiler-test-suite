      real a(100,100,100)
      integer k(100)
      a = 1
      k = 1
      call sub(1,a,k,1)
      write(6,*) " ok "
      stop
      end
      subroutine  sub(KSTART,a,k,n)
      real a(100,100,100)
      integer k(100)
       DO j = KSTART, 100
       enddo
       DO jv = 1,100
         DO j = KSTART, 100
          a(jv,k(j),n) = 1
         ENDDO
       ENDDO
       END SUBROUTINE sub
