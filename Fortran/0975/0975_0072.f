      parameter (n=2000)
      real*8 a(n,n),b(n,n),c(n)
      integer m,mm
      a=1.0;
      b=2.0;

      do j=1,n
        do i=1,n
            a(i,j)=b(j,i)
         enddo
      enddo

      write(6,*) 'i=',i,' j=',j
      write(6,*) a(20,10),a(50,60),a(1964,1127)

      end
