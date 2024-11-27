 call s1
 print *,'pass'
 end
 subroutine s1
     implicit none
     integer, parameter :: N = 10
     integer, dimension(2), parameter :: YShape = (/ 3, 2 /), ZShape = (/ N, N /)
     integer :: I, J, Loop
     real, dimension(2) :: X
     real, dimension(3, 2) :: Y
     real, dimension(N * N) :: Q
     real, dimension(N, N) :: Z
     X = (/ 4.5, 4.5 /)
     Y = reshape ((/ (I + 0.2, I = 1, 3), X, 2.0 /), YShape)
     Q = (/ ((0.0, J = 1, I - 1), 1.0, (0.0, J = I + 1, N), I = 1, N) /)
     Z = reshape (Q, ZShape)
      write (unit = 1, fmt = *) " X: ", X
     write (unit = 1, fmt = *) " Y: "
     do Loop = 1, 3
       write (unit = 1, fmt = *) " Row ", Loop
       write (unit = 1, fmt = *) Y(Loop, :)
     end do
     write (unit = 1, fmt = *) " Z: "
     do Loop = 1, N
       write (unit = 1, fmt = *) " Row ", Loop
       write (unit = 1, fmt = *) Z(Loop, :)
     end do
     write (unit = 1, fmt = *) " Q: ", Q
   end 
