interface
  subroutine sub01(p01)
    pointer :: p01
    EXTERNAL :: p01
  end subroutine
end interface

  call sub01(null())

print *,'pass'

end

subroutine sub01(p01)
  pointer  :: p01
  EXTERNAL :: p01
end subroutine
