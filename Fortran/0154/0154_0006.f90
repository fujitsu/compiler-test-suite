implicit type(ty(2))(o)
type ty(k)
Integer, kind :: k
Integer(k) :: cmp
End type
if (kind(obj%cmp)/=2) print *,101
print *,'pass'
End
