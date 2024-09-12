      program main
      real*8,dimension(100) ::a,b,c
      integer*8 istart,iend
      a=1
      b=2
      c=3
      istart = 274877906943_8 + 100_8
      iend   = 274877906943_8 + 200_8 
      call sub(a,b,c,100,istart,iend)
      print*,a
      end

      subroutine sub(a,b,c,n,istart,iend)
      real*8,dimension(n):: a,b,c
      integer*8 i, istart, iend
      do i = istart, iend-1
         a(i - 274877906943_8 - 100_8+1)= 
     *        b(i - 274877906943_8 - 100_8+1 )
      enddo
      end
      
