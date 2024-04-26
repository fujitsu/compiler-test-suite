  interface
    subroutine sub() BIND(C)
    end subroutine
  end interface
  call sub()
print *,'pass'
end

subroutine sub() BIND(C)
end subroutine
