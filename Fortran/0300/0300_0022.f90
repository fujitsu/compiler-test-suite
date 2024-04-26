      call sub(200_4)
      end

      subroutine sub(z)
      integer(kind=4):: i, a(200_4), z
      integer(kind=2):: j
      do i=1_4,200_4
        j=z
        a(i)=j*i
      enddo
      do i=160_4,170_4
        print*,i,a(i)
      enddo
      print*,200_4,a(200_4)
      end
