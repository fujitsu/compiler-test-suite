      program main
      type test_int
	sequence
        integer*4 i_non_target1
        integer*4 i_target
        integer*4 i_non_target2
      end type test_int
      type test_real
	sequence
        integer*4 i_non_target1
        real*4 r_target
        integer*4 i_non_target2
      end type test_real
      type(test_int) ,target:: area_int
      integer*4 i_const
      integer*4,pointer:: i_pointer
      common /com/i_pointer
c
      area_int%i_non_target1 = 1
      area_int%i_target = 1
      area_int%i_non_target2 = 1
      i_pointer=>area_int%i_target
      call update_by_common
      i_const = area_int%i_non_target1
      i_const = i_const + area_int%i_non_target2
      print *,area_int
      print *,i_const
      stop
      contains
        subroutine update_by_common
        real*4,pointer:: pointer
        common /com/pointer
        pointer=1994.04210
        end subroutine update_by_common
      end
