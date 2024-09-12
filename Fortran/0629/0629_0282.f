      real a(5,5),b(5,5),c(5,5),d(10,10),e(10,10),f(10,10)
      data a/1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,
     1       1,2,3,4,5,1,2,3,4,5/
      data b/2,3,4,5,6,2,3,4,5,6,2,3,4,5,6,
     1       2,3,4,5,6,2,3,4,5,6/
      data d/100*7/
      data e/100*8/
      data c/25*0./,f/100*0./
      do i=1,5
        do j=1,5
          do k=1,5
            c(i,j) = c(i,j)+a(i,k)*b(k,j)
          enddo
        enddo
      enddo

      do i=1,10
        do j=1,10
          do k=1,10
            f(i,j) = f(i,j)+d(i,k)*e(k,j)
          enddo
        enddo
      enddo
      print *,'## c ## ',c
      print *,'## f ## ',f
      end
