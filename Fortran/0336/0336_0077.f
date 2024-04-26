      subroutine foo2()
      mode = 2
      go to 100
      entry foo3(x)
      mode = 3
      go to 100
 100  continue
      do 200 i = 1, 1000
         if ( mode .eq. 3 ) then
            if ( x .ne. i ) go to 190
         endif
 200  continue
 190  continue
      print *,i
      end subroutine

      program main
      call foo2()
      call foo3(10)
      end program
