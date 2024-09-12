      program main
      parameter(n=10)
      real*8,dimension(n):: a,b,c
      a = 1
      b = 2
      c = 3
      do i=1,n
         a(i)=b(i)*c(i)+a(i)
      enddo

      ng = 0
      do i=1,n
         if(a(i).ne.7) ng = 1
      enddo
      if(ng.eq.1) then
         print*,"ng"
      else
         print*,"ok"
      endif
      end
