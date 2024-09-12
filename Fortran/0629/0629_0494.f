      subroutine sub1(n,a,b)
      real,dimension(n):: a,b
      do i=1,n
         a(i)=i
         b(i)=i*2
         j=i
         call suba(j)
         call subb(j)
      enddo
      return
      contains
      subroutine suba(j)
      a(j)=a(j)+1.0
      end subroutine suba
      subroutine subb(j)
      b(j)=b(j)-1.0
      end subroutine subb
      end subroutine sub1
      subroutine sub2(n,a,b)
      real,dimension(n):: a,b
      do i=1,n
         a(i)=i
         b(i)=i*2
         j=i
         call suba(j)
         call subb(j)
      enddo
      return
      contains
      subroutine suba(j)
      a(j)=a(j)+1.0
      end subroutine suba
      subroutine subb(j)
      b(j)=b(j)-1.0
      end subroutine subb
      end subroutine sub2
      parameter(n=10000)
      real,dimension(n):: a,b
      call sub1(n,a,b)
      print*,a(n/2),b(n/2)
      call sub2(n,a,b)
      print*,a(n/2),b(n/2)
      end
