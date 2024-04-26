
      module mod
      integer,allocatable::area(:)
      end module
      
      subroutine sub(r)
      integer,allocatable::area(:)
      integer      :: r
      integer,save :: kei
      if( allocated(area) ) then
         kei = sum(area)
      else
         kei = 10
      endif
      r = kei
      end

      use mod
      integer     :: kei1, kei2
      integer     :: ans1, ans2
      parameter (ans1=10, ans2=10)
      kei1=0
      call sub(kei1)

      allocate(area(10))
      do i=1,10
	area(i)=i
      enddo
      call sub(kei2)

      if ((kei1.eq.ans1).and.(kei2.eq.ans2)) then
         print *,'OK'
      else
         print *,'NG'
      endif

      end
