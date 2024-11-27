subroutine sub() BIND(C,NAME='xxx')
end subroutine

  interface
    subroutine sub() BIND(C)
    end subroutine
  end interface
end
