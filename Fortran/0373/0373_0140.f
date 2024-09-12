      program main
      real*8,dimension(100) ::a,b,c
      integer*8 istart,iend
      a=1
      b=2
      c=3
      istart = -274877906943_8-99_8
      iend   = -274877906943_8 
      call sub(a,b,c,100,istart,iend)
      print*,a
      end

      subroutine sub(a,b,c,n,istart,iend)
      real*8,dimension(n):: a,b,c
      integer*8 i, istart, iend
      do i = istart, iend
         a(i+274877906943_8+100) =b(i+274877906943_8+100)
      enddo
      end
      
