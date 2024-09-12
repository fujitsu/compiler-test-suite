integer :: aa = 0
integer :: ii
ii = 3
aa = ii + 4
aa = aa - 1
call sub()
contains
subroutine sub()
associate(aa=>ii+5)
associate(b=>aa)
  if (b .eq. 8) print *,'PASS' 
end associate
end associate
end subroutine
end
