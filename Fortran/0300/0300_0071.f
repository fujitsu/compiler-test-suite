      real * 4 a(10),b(10),c(10),s
      data a/1,2,3,4,5,6,7,8,9,10/
      data b/2,3,4,5,6,7,8,9,10,11/
      data c/2,3,4,2,3,4,2,3,4,2/
      data s/3./

      do i=1,10
        a(i) = b(i)**c(i)
      enddo
      print *,a
      do i=1,10
        a(i) = b(i)**s
      enddo
      print *,a
      do i=1,10
        a(i) = b(i)**3.
      enddo
      print *,a
      do i=1,10
        a(i) = s**b(i)
      enddo
      stop
      end
