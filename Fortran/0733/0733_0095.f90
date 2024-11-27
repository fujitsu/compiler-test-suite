      program main
      real, dimension (16, 16) :: a
      real :: summation
      N=16
      a = reshape( (/ ((0.0, i=1,j-1), 1.0, (0.0, i=j+1,N), j=1,N) /), &
                   (/ N, N /) )
      summation = sum(a)
      if (abs(summation-16)>0.001)print *,'error'
      print *,'pass'
      end program main
