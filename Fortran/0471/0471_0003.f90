program main
  call ary
  call ary_2
  call ary_3
  call ary_4
  call ary_5
 print *, 'pass'
end program main

subroutine ary
  character(kind=1,len=3),target,dimension(5) :: s1 = (/1_'abc', 1_'def', 1_'ghi', 1_'new', 1_'old' /)
  character(kind=1,len=:),pointer :: ps1(:) => s1
 if (ps1(1).ne.1_'abc') print *,'err'
 if (ps1(2).ne.1_'def') print *,'err'
 if (ps1(3).ne.1_'ghi') print *,'err'
 if (ps1(4).ne.1_'new') print *,'err'
 if (ps1(5).ne.1_'old') print *,'err'
end subroutine ary

subroutine ary_2
  character(kind=1,len=3),target,dimension(5) :: s1 = (/1_'abc', 1_'def', 1_'ghi', 1_'new', 1_'old' /)
  character(kind=1,len=:),pointer :: ps1(:) => s1(1:5)(1:3)
 if (ps1(1).ne.1_'abc') print *,'err'
 if (ps1(2).ne.1_'def') print *,'err'
 if (ps1(3).ne.1_'ghi') print *,'err'
 if (ps1(4).ne.1_'new') print *,'err'
 if (ps1(5).ne.1_'old') print *,'err'
end subroutine

subroutine ary_3
  character(kind=1,len=3),target,dimension(5) :: s1 = (/1_'abc', 1_'def', 1_'ghi', 1_'new', 1_'old' /)
  character(kind=1,len=:),pointer :: ps1(:) => s1(1:5)(2:3)
 if (ps1(1).ne.1_'bc') print *,'err'
 if (ps1(2).ne.1_'ef') print *,'err'
 if (ps1(3).ne.1_'hi') print *,'err'
 if (ps1(4).ne.1_'ew') print *,'err'
 if (ps1(5).ne.1_'ld') print *,'err'
end subroutine

subroutine ary_4
  character(kind=1,len=3),target,dimension(5) :: s1 = (/1_'abc', 1_'def', 1_'ghi', 1_'new', 1_'old' /)
  character(kind=1,len=:),pointer :: ps1(:) => s1(1:5)(1:1)
 if (ps1(1).ne.1_'a') print *,'err'
 if (ps1(2).ne.1_'d') print *,'err'
 if (ps1(3).ne.1_'g') print *,'err'
 if (ps1(4).ne.1_'n') print *,'err'
 if (ps1(5).ne.1_'o') print *,'err'
end subroutine

subroutine ary_5
  character(kind=1,len=3),target,dimension(5) :: s1 = (/1_'abc', 1_'def', 1_'ghi', 1_'new', 1_'old' /)
  character(kind=1,len=:),pointer :: ps1(:) => s1(1:5)(5:3)
 if (ps1(1).ne.1_'') print *,'err'
 if (ps1(2).ne.1_'') print *,'err'
 if (ps1(3).ne.1_'') print *,'err'
 if (ps1(4).ne.1_'') print *,'err'
 if (ps1(5).ne.1_'') print *,'err'
end subroutine
