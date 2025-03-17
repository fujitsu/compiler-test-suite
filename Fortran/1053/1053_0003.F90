#define T_I   integer
#define T_L   logical
#define T_R   real
#define T_C   complex
#define K_1   1
#define K_2   2
#define K_4   4
#define K_8   8
#define K_16 16
#define K_32 32

subroutine sub2()
  T_I(K_1 ) :: a_x_i1(10) , s_x_i1 , a_expr_i1(10) , s_expr_i1 , a_v_i1(10) , s_v_i1
  T_I(K_2 ) :: a_x_i2(10) , s_x_i2 , a_expr_i2(10) , s_expr_i2 , a_v_i2(10) , s_v_i2
  T_I(K_4 ) :: a_x_i4(10) , s_x_i4 , a_expr_i4(10) , s_expr_i4 , a_v_i4(10) , s_v_i4
  T_I(K_8 ) :: a_x_i8(10) , s_x_i8 , a_expr_i8(10) , s_expr_i8 , a_v_i8(10) , s_v_i8
  T_L(K_1 ) :: a_x_l1(10) , s_x_l1 , a_expr_l1(10) , s_expr_l1 , a_v_l1(10) , s_v_l1
  T_L(K_2 ) :: a_x_l2(10) , s_x_l2 , a_expr_l2(10) , s_expr_l2 , a_v_l2(10) , s_v_l2
  T_L(K_4 ) :: a_x_l4(10) , s_x_l4 , a_expr_l4(10) , s_expr_l4 , a_v_l4(10) , s_v_l4
  T_L(K_8 ) :: a_x_l8(10) , s_x_l8 , a_expr_l8(10) , s_expr_l8 , a_v_l8(10) , s_v_l8

  T_R(K_2 ) :: a_x_r2(10) , s_x_r2 , a_expr_r2(10) , s_expr_r2 , a_v_r2(10) , s_v_r2
  T_R(K_4 ) :: a_x_r4(10) , s_x_r4 , a_expr_r4(10) , s_expr_r4 , a_v_r4(10) , s_v_r4
  T_R(K_8 ) :: a_x_r8(10) , s_x_r8 , a_expr_r8(10) , s_expr_r8 , a_v_r8(10) , s_v_r8
  T_R(K_16) :: a_x_r16(10), s_x_r16, a_expr_r16(10), s_expr_r16, a_v_r16(10), s_v_r16

  T_C(K_2 ) :: a_x_c2(10) , s_x_c2 , a_expr_c2(10) , s_expr_c2 , a_v_c2(10) , s_v_c2
  T_C(K_4 ) :: a_x_c4(10) , s_x_c4 , a_expr_c4(10) , s_expr_c4 , a_v_c4(10) , s_v_c4
  T_C(K_8 ) :: a_x_c8(10) , s_x_c8 , a_expr_c8(10) , s_expr_c8 , a_v_c8(10) , s_v_c8
  T_C(K_16) :: a_x_c16(10), s_x_c16, a_expr_c16(10), s_expr_c16, a_v_c16(10), s_v_c16

  a_x_i1(1) =10; s_x_i1 =10; a_expr_i1(1) =10; s_expr_i1 =10; a_v_i1(1) =10; s_v_i1 = 10
  a_x_i2(1) =10; s_x_i2 =10; a_expr_i2(1) =10; s_expr_i2 =10; a_v_i2(1) =10; s_v_i2 = 10
  a_x_i4(1) =10; s_x_i4 =10; a_expr_i4(1) =10; s_expr_i4 =10; a_v_i4(1) =10; s_v_i4 = 10
  a_x_i8(1) =10; s_x_i8 =10; a_expr_i8(1) =10; s_expr_i8 =10; a_v_i8(1) =10; s_v_i8 = 10

  a_x_l1(1) =.true.; s_x_l1 =.true.; a_expr_l1(1) =.true.;
                                     s_expr_l1 =.true.; a_v_l1(1) =.true.; s_v_l1 = .true.
  a_x_l2(1) =.true.; s_x_l2 =.true.; a_expr_l2(1) =.true.;
                                     s_expr_l2 =.true.; a_v_l2(1) =.true.; s_v_l2 = .true.
  a_x_l4(1) =.true.; s_x_l4 =.true.; a_expr_l4(1) =.true.;
                                     s_expr_l4 =.true.; a_v_l4(1) =.true.; s_v_l4 = .true.
  a_x_l8(1) =.true.; s_x_l8 =.true.; a_expr_l8(1) =.true.;
                                     s_expr_l8 =.true.; a_v_l8(1) =.true.; s_v_l8 = .true.

  a_x_r2(1) =10; s_x_r2 =10; a_expr_r2(1) =10; s_expr_r2 =10; a_v_r2(1) =10; s_v_r2 = 10
  a_x_r4(1) =10; s_x_r4 =10; a_expr_r4(1) =10; s_expr_r4 =10; a_v_r4(1) =10; s_v_r4 = 10
  a_x_r8(1) =10; s_x_r8 =10; a_expr_r8(1) =10; s_expr_r8 =10; a_v_r8(1) =10; s_v_r8 = 10
  a_x_r16(1)=10; s_x_r16=10; a_expr_r16(1)=10; s_expr_r16=10; a_v_r16(1)=10; s_v_r16 = 10

  a_x_c2(1) =10; s_x_c2 =10; a_expr_c2(1) =10; s_expr_c2 =10; a_v_c2(1) =10; s_v_c2 = 10
  a_x_c4(1) =10; s_x_c4 =10; a_expr_c4(1) =10; s_expr_c4 =10; a_v_c4(1) =10; s_v_c4 = 10
  a_x_c8(1) =10; s_x_c8 =10; a_expr_c8(1) =10; s_expr_c8 =10; a_v_c8(1) =10; s_v_c8 = 10
  a_x_c16(1)=10; s_x_c16=10; a_expr_c16(1)=10; s_expr_c16=10; a_v_c16(1)=10; s_v_c16 = 10

!$omp atomic write
   s_x_i1    =    s_expr_i1
!$omp end atomic
!$omp atomic write seq_cst
   a_x_i1(1) =    s_expr_i2
!$omp end atomic
!$omp atomic write
   s_x_i1    =    a_expr_i4(1)
!$omp end atomic
!$omp atomic write seq_cst
   a_x_i1(1) =    a_expr_i8(1)
!$omp end atomic

!$omp atomic write
   a_x_i2(1) =    a_expr_i1(1)
!$omp end atomic
!$omp atomic write seq_cst
   s_x_i2    =    a_expr_i2(1)
!$omp end atomic
!$omp atomic write
   a_x_i2(1) =    s_expr_i4
!$omp end atomic
!$omp atomic write seq_cst
   s_x_i2    =    s_expr_i8
!$omp end atomic

!$omp atomic write
   s_x_l4    =    s_expr_l1
!$omp end atomic
!$omp atomic write seq_cst
   a_x_l4(1) =    s_expr_l2
!$omp end atomic
!$omp atomic write
   s_x_l4    =    a_expr_l4(1)
!$omp end atomic
!$omp atomic write seq_cst
   a_x_l4(1) =    a_expr_l8(1)
!$omp end atomic

!$omp atomic write
   a_x_l8(1) =    a_expr_l1(1)
!$omp end atomic
!$omp atomic write seq_cst
   s_x_l8    =    a_expr_l2(1)
!$omp end atomic
!$omp atomic write
   a_x_l8(1) =    s_expr_l4
!$omp end atomic
!$omp atomic write seq_cst
   s_x_l8    =    s_expr_l8
!$omp end atomic



  write(*,*), '4 ', a_x_i1(1) , s_x_i1 , a_expr_i1(1) , s_expr_i1 , a_v_i1(1) , s_v_i1
  write(*,*), '4 ', a_x_i2(1) , s_x_i2 , a_expr_i2(1) , s_expr_i2 , a_v_i2(1) , s_v_i2
  write(*,*), '4 ', a_x_i4(1) , s_x_i4 , a_expr_i4(1) , s_expr_i4 , a_v_i4(1) , s_v_i4
  write(*,*), '4 ', a_x_i8(1) , s_x_i8 , a_expr_i8(1) , s_expr_i8 , a_v_i8(1) , s_v_i8

  write(*,*), '4 ', a_x_l1(1) , s_x_l1 , a_expr_l1(1) , s_expr_l1 , a_v_l1(1) , s_v_l1
  write(*,*), '4 ', a_x_l2(1) , s_x_l2 , a_expr_l2(1) , s_expr_l2 , a_v_l2(1) , s_v_l2
  write(*,*), '4 ', a_x_l4(1) , s_x_l4 , a_expr_l4(1) , s_expr_l4 , a_v_l4(1) , s_v_l4
  write(*,*), '4 ', a_x_l8(1) , s_x_l8 , a_expr_l8(1) , s_expr_l8 , a_v_l8(1) , s_v_l8

  write(*,*), '4 ', a_x_r4(1) , s_x_r4 , a_expr_r4(1) , s_expr_r4 , a_v_r4(1) , s_v_r4
  write(*,*), '4 ', a_x_r8(1) , s_x_r8 , a_expr_r8(1) , s_expr_r8 , a_v_r8(1) , s_v_r8
  write(*,*), '4 ', a_x_r16(1), s_x_r16, a_expr_r16(1), s_expr_r16, a_v_r16(1), s_v_r16

  write(*,*), '4 ', a_x_c4(1) , s_x_c4 , a_expr_c4(1) , s_expr_c4 , a_v_c4(1) , s_v_c4
  write(*,*), '4 ', a_x_c8(1) , s_x_c8 , a_expr_c8(1) , s_expr_c8 , a_v_c8(1) , s_v_c8
  write(*,*), '4 ', a_x_c16(1), s_x_c16, a_expr_c16(1), s_expr_c16, a_v_c16(1), s_v_c16


end subroutine sub2


program main
  call sub2()
end program
