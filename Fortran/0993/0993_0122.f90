  program main

    interface assignment(=)
      subroutine sub1(c,i)
        character,intent(out) :: c
        integer  ,intent(in)  :: i
      end subroutine sub1
    end interface assignment(=)

    interface operator(.aAa.)
      function fun1(c,i)
        character,intent(in)  :: c
        integer  ,intent(in)  :: i
      end function fun1
    end interface operator(.aAa.)

    interface gen
      subroutine sub ; end subroutine 
    end interface gen

  end program main
