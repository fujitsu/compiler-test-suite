      subroutine sub(i,j,area)
      integer,dimension(i,j)             :: area
      integer,dimension(:,:),allocatable :: d_area
      allocate(d_area(i,j))
      do ii=1,10
        do jj=1,10
          d_area(ii,jj)=ii*jj*7
        enddo
      enddo
      area=d_area
      deallocate(d_area)
      return
      end
      integer,dimension(10,10)::a
      call sub(10,10,a)
      print *,a(1,1),' ',a(10,10)
      stop
      end
      
      
      

