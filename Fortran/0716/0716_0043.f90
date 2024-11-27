subroutine sub(i)
  integer,intent(in) :: i
end subroutine

  interface
    pure subroutine sub(i)
      integer,intent(in) :: i
    end subroutine
  end interface
end
