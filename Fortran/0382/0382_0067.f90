subroutine ss
 parameter(k2=-2)
 parameter (k = len((/character(k2)::'a'/)))
 if (k/=0) print *,101,k
 call ssss
contains
 subroutine ssss()
 parameter (kk = len((/character(k2)::'a'/)))
 if (kk/=0) print *,102,kk
 end subroutine
end
call ss
print *,'pass'
end
