type ty(k)
Integer, kind :: k
Integer(k) :: cmp
End type
type (ty(2)) ::obj
if (obj%cmp%kind/=2) print *,101
if (obj%k/=2) print *,102
print *,'pass'
End
