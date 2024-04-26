Type ty(k1,k2)
Integer, kind :: k1,k2
Integer :: arr(k1) = [2,4]
End type
Type (ty(2,4)):: obj
if (obj%arr(1)/=2) print *,101
print *,'pass'
End
