      program main
      real*8,dimension(100) ::a,c
      real*8,dimension(-27487790_8-99:-27487790_8)::b
      integer*8 istart,iend
      a=1
      b=2
      c=3
      istart = -27487790_8-99
      iend   = -27487790_8
      call sub(a,b,c,100,istart,iend)
      print*,a
      end

      subroutine sub(a,b,c,n,istart,iend)
      real*8,dimension(n):: a,b,c
      integer*8 i, istart, iend
      do i = istart, iend
         a(i+27487790_8+100) =b(i+27487790_8+100)
      enddo
      end
      
