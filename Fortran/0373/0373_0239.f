      program main
      parameter(n=10)
      real*8 test_data(n)
      integer*4 ires(n,n),ichk(n,n)
      common  /nan/test_data,ires,ichk
      isum = 0
      call init
      do j=1,n
         do i=1,n
            if(.not.(test_data(i).gt.test_data(j))) then
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
       ires(  1,  1)=1
       ires(  2,  1)=1
       ires(  3,  1)=1
       ires(  4,  1)=1
       ires(  5,  1)=1
       ires(  6,  1)=1
       ires(  7,  1)=1
       ires(  8,  1)=1
       ires(  9,  1)=1
       ires(  10,  1)=1
       ires(  2,  2)=1
       ires(  3,  2)=1
       ires(  4,  2)=1
       ires(  5,  2)=1
       ires(  6,  2)=1
       ires(  1,  3)=1
       ires(  2,  3)=1
       ires(  3,  3)=1
       ires(  4,  3)=1
       ires(  5,  3)=1
       ires(  6,  3)=1
       ires(  7,  3)=1
       ires(  8,  3)=1
       ires(  9,  3)=1
       ires(  10,  3)=1
       ires(  1,  4)=1
       ires(  2,  4)=1
       ires(  3,  4)=1
       ires(  4,  4)=1
       ires(  5,  4)=1
       ires(  6,  4)=1
       ires(  7,  4)=1
       ires(  8,  4)=1
       ires(  9,  4)=1
       ires(  10,  4)=1
       ires(  1,  5)=1
       ires(  2,  5)=1
       ires(  3,  5)=1
       ires(  4,  5)=1
       ires(  5,  5)=1
       ires(  6,  5)=1
       ires(  7,  5)=1
       ires(  8,  5)=1
       ires(  9,  5)=1
       ires(  10,  5)=1
       ires(  1,  6)=1
       ires(  2,  6)=1
       ires(  3,  6)=1
       ires(  4,  6)=1
       ires(  5,  6)=1
       ires(  6,  6)=1
       ires(  7,  6)=1
       ires(  8,  6)=1
       ires(  9,  6)=1
       ires(  10,  6)=1
       ires(  2,  7)=1
       ires(  3,  7)=1
       ires(  4,  7)=1
       ires(  5,  7)=1
       ires(  6,  7)=1
       ires(  7,  7)=1
       ires(  8,  7)=1
       ires(  9,  7)=1
       ires(  2,  8)=1
       ires(  3,  8)=1
       ires(  4,  8)=1
       ires(  5,  8)=1
       ires(  6,  8)=1
       ires(  7,  8)=1
       ires(  8,  8)=1
       ires(  9,  8)=1
       ires(  2,  9)=1
       ires(  3,  9)=1
       ires(  4,  9)=1
       ires(  5,  9)=1
       ires(  6,  9)=1
       ires(  9,  9)=1
       ires(  2,  10)=1
       ires(  3,  10)=1
       ires(  4,  10)=1
       ires(  5,  10)=1
       ires(  6,  10)=1
       ires(  7,  10)=1
       ires(  8,  10)=1
       ires(  9,  10)=1
       ires(  10,  10)=1
      end

      block data
      parameter(n=10,nn=n*n)
      real*8 test_data(n)
      integer*4 ires(n,n),ichk(n,n)
      common  /nan/test_data,ires,ichk
      data test_data/z'7ff0000000000000',
     +               z'fff0000000000000',
     +               z'7fffffffffffffff',
     +               z'ffffffffffffffff',
     +               z'7ff0000000000001',
     +               z'fff0000000000001',
     +               z'0000000000000000',
     +               z'8000000000000000',
     +               -1,1/
      data ires/nn*0/,ichk/nn*0/
      end
