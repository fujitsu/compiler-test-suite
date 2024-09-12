      complex c8001(10)/1,2,3,4,5,6,7,8,9,10/, c8002(10)
      equivalence (c8001(1), c8002(1))
      logical ll(10)
      do j = 1, 10
         ll(j) = c8001(1) .eq. c8001(10)
      end do
      write (6, *) ll
      end
