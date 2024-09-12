      subroutine sub(n,a,b,ix1,ix2)
      real,dimension(n,n)::a,b
      integer,dimension(n)::ix1,ix2

      do i=1,n
         do j=1,n
            ii=ix1(i)
            jj=ix2(j)
            a(jj,ii)=a(jj,ii)+b(j,i)
         enddo
      enddo
      end

      parameter(n=2048)
      real,dimension(n,n)::a,b
      integer,dimension(n)::ix1,ix2
      a=1.0;b=1.0
      ix1=1;ix2=(/(i,i=1,n)/)
      call sub(n,a,b,ix1,ix2)
      print*,(a(i,i),i=1,n,512)
      end
