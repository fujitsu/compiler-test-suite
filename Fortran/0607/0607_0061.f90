integer :: a = 3
a =a -1
call sub()
contains
subroutine sub()
associate(a=>4,b=>a)
  if (b .eq. 4) print *,'PASS'
end associate
end subroutine
end
