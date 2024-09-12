module m1
   type x(k1,k2,k4,k8,k16)
    integer,kind::k1=1,k2=2,k4=4,k8=8,k16=16
    integer(k1) k1v1
    integer(kind=k1) k1v2
    integer(k1) ::k1v3
    integer(kind=k1) ::k1v4
    integer(k2) k2v1
    integer(kind=k2) k2v2
    integer(k2) ::k2v3
    integer(kind=k2) ::k2v4
    complex(k16) k16v1
    complex(kind=k16) k16v2
    complex(k16) ::k16v3
    complex(kind=k16) ::k16v4
  end type
 type (x) z
  private:: z,x
contains
 subroutine s1
   if (z%k1/=1) print *,101
   if (z%k2/=2) print *,102
   if (z%k4/=4) print *,103
   if (z%k8/=8) print *,104
   if (z%k16/=16) print *,105
   if (z%k1v1%kind/=1) print *,106
   if (z%k1v2%kind/=1) print *,107
   if (z%k1v3%kind/=1) print *,108
   if (z%k1v4%kind/=1) print *,109
   if (z%k2v1%kind/=2) print *,110
   if (z%k2v2%kind/=2) print *,111
   if (z%k2v3%kind/=2) print *,112
   if (z%k2v4%kind/=2) print *,113
   if (z%k16v1%kind/=16) print *,114
   if (z%k16v2%kind/=16) print *,115
   if (z%k16v3%kind/=16) print *,116
   if (z%k16v4%kind/=16) print *,117
  end subroutine
end
use m1
call s1
print *,'pass'
end
