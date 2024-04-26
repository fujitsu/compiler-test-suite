      interface
         function fun(a) result(k)
         real*4 , intent(in) :: a(30)
         real*4 :: k(30)
         end function fun
      end interface
      REAL*4 a(30),d(30)

      d=fun(a)
      write(6,*) ' ## 1026 ok ## '
      end

      recursive function fun(a) result(k)
      real*4 a(30),b(30),k(30)

      do i=1,30
         b(i) = 0.
      enddo

      do i=1,30
         k(i) = b(i)
      enddo
      end function fun
