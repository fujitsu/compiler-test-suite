 call s1
 print *,'pass'
 end
     module mod_1

       integer, parameter, public :: n = 9

    end module mod_1

    module mod_2

       public :: swap

       contains

       subroutine swap (a, b)
          real, dimension(:), intent(in out) :: a, b
          real, dimension(size(a)) :: temp

          if (size(a) == size(b)) then
             temp = a
             a = b
             b = temp
          else
             stop
          end if
       end subroutine swap

    end module mod_2
subroutine s1
   use mod_1
   use mod_2

   real, dimension(n) :: a, b

   a = (/ (real(i), i=1,n) /)
   b = (/ (real(i), i=n,1,-1) /)

   if (any((/a(n), b(n)/)/=(/9,1/)))write(6,*) "NG"

   call swap(a, b)

   if (any((/a(n), b(n)/)/=(/1,9/)))write(6,*) "NG"
end
