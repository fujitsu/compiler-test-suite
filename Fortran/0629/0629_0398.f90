      subroutine sub(a)
      real,dimension(1000,1000)::a
      a = transpose(a)
      end
      program main
      real,dimension(1000,1000)::a
      do i=1,1000
         do j=1,1000
            a(j,i) = j
         enddo
      enddo
      print*,a(1,2)
      call sub(a)
      print*,a(1,2)
      end
