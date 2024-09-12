      program main
      integer rhs(10,10)/100*1/
      integer grid_points(3)/3*10/
       i = grid_points(1)
       do     k = 1, 8
          rhs(i,k) = 50
       end do
       do  k = 1, 8
          do     i = 1, 8
             rhs(i,k) = 3
          end do
       end do
       write(6,*) rhs
       end
