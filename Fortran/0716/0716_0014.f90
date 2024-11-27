  interface
    subroutine sub() BIND(C)
    end subroutine
  end interface
  call sub()
end

subroutine sub() BIND(C)
end subroutine
