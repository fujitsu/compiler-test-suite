      module mod
      integer,allocatable::area(:)
      end module
      
      subroutine sub(r)
      integer,allocatable::area(:)
      integer      :: r
      integer,save :: sum
      do i=1,10
        if( allocated(area) ) then
          sum = sum + area(i)
        end if
      enddo
      if( .not.allocated(area) ) then
          sum = 10
      end if
      r = sum
      end
      use mod
      integer     :: sum
      sum=0
      print *,'call sub 1st'
      call sub(sum)
      print *,sum
      allocate(area(10))
      do i=1,10
	area(i)=i
      enddo
      print *,'call sub 2nd'
      call sub(sum)
      print *,sum
      end
