impure elemental subroutine sub(i)
  integer,intent(in) :: i
end subroutine

  interface
    subroutine sub(i)
      integer,intent(in) :: i
    end subroutine
  end interface
end
