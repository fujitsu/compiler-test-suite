module m
  integer :: p
  pointer :: p
  protected :: p
  contains
  subroutine foo
    allocate(p) 
    call foo02(p)
    print *,"pass"
  end subroutine

  subroutine foo02(xxx)
    integer,intent(inout) :: xxx
    if(xxx==1)then
    end if
  end subroutine

end module m

program main
  use m
  call foo
end
