      subroutine sub_inqire_size(array,sv)
      integer*8,dimension(10)   ::array
      integer*4 sv
      sv = size( spread(array,1,10) )
      return
      end
      integer*8,dimension(10)  :: ar
      do i=1,10
         ar(i) = i 
      enddo
      call sub_inqire_size(ar,is)
      print *,'test end',is
      stop
      end
