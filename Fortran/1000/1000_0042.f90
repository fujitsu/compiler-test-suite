elemental subroutine sub(i)
  integer,intent(in) :: i
j=i
j=j
end subroutine

  interface
    subroutine sub(i)
      integer :: i
    end subroutine
  end interface
end
