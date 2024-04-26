module m1
  interface
    module subroutine sub1
    end subroutine
  end interface
end
submodule (m1) &
Mmaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
 interface
    module subroutine aa
    end subroutine
  end interface
end
submodule (m1) &
Mmaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
 interface
    module subroutine aa
    end subroutine
  end interface
end
print *,'pass'
end
