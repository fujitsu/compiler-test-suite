      subroutine sub1(a,n,s)
      real*8 a(n),s
      do i=1,n
         s=s+a(i)
      enddo
      end

      subroutine sub2(a,n,s)
      real*8 a(n),s
      do i=1,100
         s=s-a(i)
      enddo
      end

      subroutine init(a,n)
      real*8 a(n)
      do i=1,n
         a(i)=i
      enddo
      end

      program main
      parameter(n=100) 
      real*8 a(n),s1,s2
      s1=0
      s2=0
      call init(a,n)
      call sub1(a,n,s1)
      call sub2(a,n,s2)
      print *,s1
      print *,s2
      end
