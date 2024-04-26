module mod
contains
  subroutine msub
    print *,"no call"
  end subroutine msub
end module mod

subroutine sub1
  print *,"no call"
end

program main
  print *,"OK"
contains
  subroutine sub2
    print *,"no call"
  end subroutine sub2
end program main
