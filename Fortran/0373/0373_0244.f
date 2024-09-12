      program main
      parameter(n=10)
      real*8 test_data(n)
      integer*4 ires(n,n),ichk(n,n)
      common  /nan/test_data,ires,ichk
      isum = 0
      call init
      do j=1,n
         do i=1,n
            if(test_data(i) .gt. test_data(j)) then
               ichk(i,j) = 1
               isum = isum+1
            endif
         enddo
      enddo
      do j=1,n
         do i=1,n
            if(ires(i,j).ne.ichk(i,j)) then
               print*,"ng ",i,j
            endif
         enddo
      enddo
      print*,"ok",isum
      end

      subroutine init
      parameter(n=10)
      real*8 test_data(n)
      integer*4 ires(n,n),ichk(n,n)
      common  /nan/test_data,ires,ichk
       ires(  1,  2)=1
       ires(  7,  2)=1
       ires(  8,  2)=1
       ires(  9,  2)=1
       ires(  10,  2)=1
       ires(  1,  7)=1
       ires(  10,  7)=1
       ires(  1,  8)=1
       ires(  10,  8)=1
       ires(  1,  9)=1
       ires(  7,  9)=1
       ires(  8,  9)=1
       ires(  10,  9)=1
       ires(  1,  10)=1
      end

      block data
      parameter(n=10)
      real*8 test_data(n)
      integer*4 ires(n,n),ichk(n,n)
      common  /nan/test_data,ires,ichk
      data test_data/z'7ff0000000000000',
     +               z'fff0000000000000',
     +               z'7ff8000000000000',
     +               z'fff8000000000000',
     +               z'7ff0000000000001',
     +               z'fff0000000000001',
     +               z'0000000000000000',
     +               z'8000000000000000',
     +               -1,1/
      end
