subroutine ss
 parameter(k2=-2)
 parameter(k3=2)
 parameter (k = len((/character(k2)::'a'/)))
 parameter (kk = len((/character(k3)::'a'/)))
 if (k/=0) print *,101,k
 if (kk/=2) print *,102,kk
 call ssss
contains
 subroutine ssss()
 parameter (kk = len((/character(k2)::'a'/)))
 parameter (kkj= len((/character(k3)::'a'/)))
 if (kk/=0) print *,102,kk
 if (kkj/=2) print *,122,kkj
 end subroutine
end
call ss
print *,'pass'
end

