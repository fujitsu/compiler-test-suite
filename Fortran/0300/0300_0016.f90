      subroutine sub1(s,a,n)
      integer s,a(n)
      s=sum(a)
      end

      subroutine sub2(b,c,n)
      integer b(n),c(n)
      b=c
      end

      program main
      parameter(n=8)
      integer s,a(n,n),b(n),c(n)
      c=0
      m=1
      s=0
      do j=1,n
         do i=1,n
            a(i,j)=m
            m=m+1
         enddo
	 b(j)=j
      enddo
      call sub1(s,a,n)
      call sub2(b,c,n)
      print *,"ok"
      end
