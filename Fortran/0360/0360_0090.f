      SUBROUTINE sub(N,C,WORK)
      IMPLICIT real*8(A-H,O-Z)
      COMPLEX*16 C(*),WORK(*)
      do 100 i=1,N
         C(i) = WORK(i)
  100 continue
      RETURN
      END

      implicit real*8(a-h,o-y)
      parameter(k=11,m=2)
      complex*16 a(k,m),work(k*2)
      n=6

      do i=1,n
         work(i)=i
      enddo
      nh=n/2
      DO NCOL=1,M
       call sub(nh,a(1,ncol),work)
      ENDDO
      write(*,*) 'a(1,2)= ',a(1,2)
      end
