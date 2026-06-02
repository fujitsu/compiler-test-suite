Type ty(k)
Integer, kind :: k
Character*(k) ::cmp*(12)(2)
End type
Type (ty(2)):: obj
obj%cmp='ab'
if(len(obj%cmp(1)) .eq. 12) print *,'pass'
End

