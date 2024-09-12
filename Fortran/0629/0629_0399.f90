      subroutine sub(a,b)
      real,dimension(1000,1000)::a,b
      b = transpose(a)
      end
      program main
      real,dimension(1000,1000)::a,b
      do i=1,1000
         do j=1,1000
            a(j,i) = j
         enddo
      enddo
      print*,a(1,2)
      call sub(a,b)
      print*,b(1,2)
      end
