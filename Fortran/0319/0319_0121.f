      program main
      type test
        integer*4 i_non_target1
        integer*4 i_target
        integer*4 i_non_target2
      end type test
      type(test),target:: area
      integer*4,pointer:: i_pointer
      integer*4 i_const
      area%i_target = 1
      area%i_non_target1 = 1
      area%i_non_target2 = 1
      i_pointer=>area%i_target
      i_pointer = 0
      i_const = area%i_non_target1
      i_const = i_const + area%i_non_target2
      print *,area
      print *,i_const
      stop
      end
