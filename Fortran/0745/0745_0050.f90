      type struc
        integer ,dimension(0) :: cc
      end type
      type(struc), dimension(-3,-3,-3) :: c1
      call sub_structure(c1,-3)
      print *,'pass'
      contains
      subroutine sub_structure(ca,i)
      type(struc), dimension(i,i,i) :: ca
      end subroutine
      end
