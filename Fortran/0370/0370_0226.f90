
program ppp
  integer(kind=8),target :: s1 = 5
  integer(kind=8),pointer :: p1 => s1

  block
    integer(kind=8),target :: s2 = 10
    integer(kind=8),pointer :: p1 => s2
    integer(kind=8),pointer :: p2 => s2
    integer(kind=8),pointer :: p3 => s1

    if (p1 .ne. 10) print *, "NG1"
    if (p2 .ne. 10) print *, "NG2"
    if (p3 .ne.  5) print *, "NG3"
    call sub
  end block
  if (p1 .ne. 5) print *, "NG4"
  call sub
  print *, "OK"
end program ppp

subroutine sub
  integer(kind=8),target,dimension(3) :: ss = (/10,20,30/)
  integer(kind=8),pointer :: sp0 => ss(2)

  if (sp0 .ne. 20) print *, "NG5"

  block
    integer(kind=8),pointer :: sp0 => ss(3)    
    if (sp0 .ne. 30) print *, "NG6"    
  end block

  if (sp0 .ne. 20) print *, "NG7"
  
end subroutine sub
