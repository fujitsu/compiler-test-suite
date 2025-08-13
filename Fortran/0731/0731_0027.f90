
module int_swap_module

   public  :: swap
   private :: int_swap

   interface swap
             module procedure int_swap
   end interface

contains

   subroutine int_swap( a, b )
      integer, intent(in out) :: a, b
      integer                 :: temp
      temp = a
      a    = b
      b    = temp
   end subroutine int_swap

end module int_swap_module

module real_swap_module

   public  :: swap
   private :: real_swap

   interface swap
             module procedure real_swap
   end interface

contains

   subroutine real_swap( a, b )
      real,    intent(in out) :: a, b
      real                    :: temp
      temp = a
      a    = b
      b    = temp
   end subroutine real_swap

end module real_swap_module

program main
    use int_swap_module
    use real_swap_module

    real     :: x, y
    integer  :: i, k

    x = 1.0
    y = 2.0
    i = 1
    k = 2

    write(unit=12,fmt="(A,2F8.2)") "x,y before swap: ", x,y
    call swap( x, y )
    write(unit=12,fmt="(A,2F8.2)") "x,y after  swap: ", x,y

    write(unit=12,fmt="(A,2I8.2)") "i,k before swap: ", i,k
    call swap( i, k )
    write(unit=12,fmt="(A,2I8.2)") "i,k after  swap: ", i,k

print *,'pass'
    stop

end program main
