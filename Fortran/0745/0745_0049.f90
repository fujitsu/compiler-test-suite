      type struc
        integer ,dimension(0) :: cc
      end type
      type(struc), dimension(1) :: c1
      call sub_structure(c1)
      print *,'pass'
      contains
      subroutine sub_structure(ca)
      type(struc), dimension(:) :: ca
      ca(1)%cc=1
      end subroutine
      end
