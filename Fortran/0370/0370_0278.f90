program main
  call sub
contains
  subroutine sub
    logical(kind=8),target :: t1 = .TRUE.
    logical(kind=8),target :: t2 = .FALSE.
    structure /tp1/
      logical(kind=8),pointer :: p1 => t1
      integer(kind=2) :: s1 = 7
    end structure
    record /tp1/ str1
    record /tp1/ str2

    str2%p1=>t2
    print *, str1%p1, str1%s1
    print *, str2%p1, str2%s1
end subroutine sub
end program
