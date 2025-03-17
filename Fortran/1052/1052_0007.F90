#define T_X real
#define T_E integer
#define T_V integer
#define K_X 4
#define K_E 4
#define K_V 4
subroutine sub2()
  T_X(K_X) :: a_x(10)   , s_x
  T_E(K_E) :: a_expr(10), s_expr
  T_V(K_V) :: a_v(10)   , s_v

  integer(4) :: i

  i = 3
  a_x(1)      = i
  a_x(i+1)    = i
  s_x         = i
  a_expr(1)   = i
  a_expr(i+1) = i
  s_expr      = i
  a_v(1)      = i
  a_v(i+1)    = i
  s_v         = i

!$omp atomic read
   s_v    = a_x(1)
!$omp end atomic

!$omp atomic read
   s_v      = a_x(i+1)
!$omp end atomic

   write(*,*) ,  '1 ok', s_v ,s_x
   write(*,*) ,  '2 ok', a_v(1) ,s_x
   write(*,*) ,  '3 ok', s_v ,a_x(1)
   write(*,*) ,  '4 ok', a_v(1) ,a_x(1) ,a_expr(1) ,s_expr
   write(*,*) ,  '5 ok', s_v ,s_x
   write(*,*) ,  '6 ok', a_v(i+1) ,s_x
   write(*,*) ,  '7 ok', s_v ,a_x(i+1)
   write(*,*) ,  '8 ok', a_v(i+1) ,a_x(i+1)

end subroutine sub2


program main
  call sub2()
end program
