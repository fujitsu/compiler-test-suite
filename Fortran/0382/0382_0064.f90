subroutine ss
parameter(k2=-2)
 character(k2)::b(1)
 parameter (b = (/character(k2)::'a'/))
  n3=-2
  if (len( (/character(k2)::'a'/))/=0) print *,101
  if (len( (/character(n3)::'a'/))/=0) print *,102
  if (len(b)/=0)print *,103
 call ssss
contains
 subroutine ssss()
 character(k2) :: bbb (1)
 parameter (bbb = (/character(k2)::'a'/))
  if (len(bbb)/=0)print *,104
 end subroutine
end
call ss
print *,'pass'
end
