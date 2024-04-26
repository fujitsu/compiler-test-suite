      subroutine sub_1st_dim(array)
      integer*8,dimension(10)   ::array
      integer*8,dimension(10,10)::w_a
      w_a   = spread(array,1,10)
      array = w_a(3,:)
      return
      end
      subroutine sub_2nd_dim(array)
      integer*8,dimension(10)   ::array
      integer*8,dimension(10,10)::w_a
      w_a   = spread(array,2,10)
      array = w_a(:,3)
      return
      end
      integer*8,dimension(10)  :: ar1,ar2
      do i=1,10
         ar1(i) = i 
      enddo
      call sub_1st_dim(ar1)
      do i=1,10
         ar2(i) = i
      enddo
      call sub_2nd_dim(ar2)
      do i=1,10
         if ( ar1(i)/=ar2(i) ) print *,'ng'
      enddo
      print *,'test end'
      stop
      end
