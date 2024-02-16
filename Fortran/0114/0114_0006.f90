      program test_with_pointers
      implicit none
      integer, parameter :: N = 1000
      real, dimension(:), pointer :: vector
      real, dimension(N,N),target :: matrix
      integer :: inner_counter, outer_counter

      do inner_counter = 1,N
          do outer_counter = 1,N
              matrix(inner_counter,outer_counter) = real(inner_counter+outer_counter)
          end do
      end do


      do outer_counter = 1,100
          do inner_counter = 1,N
              vector => matrix(:,inner_counter)
              call do_nothing(N,vector) 
          end do
      end do

      print *,'PASS'
      end
      subroutine do_nothing (N,vector)
      real, dimension(N) :: vector
      real :: check_sum

      check_sum = sum(vector)

      end
