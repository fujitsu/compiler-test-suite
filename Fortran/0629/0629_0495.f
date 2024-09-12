      module mod1
      parameter(n=10000)
      real,dimension(n):: a,b
      integer:: ii
      contains
      subroutine suba
      a(ii)=a(ii)+1.0
      end subroutine suba
      subroutine subb
      b(ii)=b(ii)+1.0
      end subroutine subb
      end module mod1
      subroutine sub1(nn)
      use mod1
      do i=1,nn
         a(i)=i
         b(i)=i*2
         ii=i
         call suba
         call subb
      enddo
      return
      end
      subroutine sub2(nn)
      use mod1
      do i=1,nn
         a(i)=i
         b(i)=i*2
         ii=i
         call suba
         call subb
      enddo
      return
      end
      use mod1
      call sub1(n)
      print*,a(n/2),b(n/2)
      call sub2(n)
      print*,a(n/2),b(n/2)
      end
