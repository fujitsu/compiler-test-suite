INTERFACE RANF
ELEMENTAL FUNCTION SCALAR_RANF(X)
REAL, INTENT(IN) :: X
END FUNCTION SCALAR_RANF
FUNCTION VECTOR_RANDOM(X)
REAL X(:)
REAL VECTOR_RANDOM(SIZE(X))
END FUNCTION VECTOR_RANDOM
END INTERFACE RANF
REAL ::A(10,10), AA(10,10)=1
A = RANF(AA)
if (any(A/=11)) print *,101
A(6:10,2) = RANF(AA(6:10,2))
if (any(A(6:10,2)/=21)) print *,102
if (any(A(1:5,2)/=11)) print *,103
if (any(A(:,1)/=11)) print *,104
print *,'pass'
end
ELEMENTAL FUNCTION SCALAR_RANF(X)
REAL, INTENT(IN) :: X
 SCALAR_RANF=X+10
END FUNCTION SCALAR_RANF
FUNCTION VECTOR_RANDOM(X)
REAL X(:)
REAL VECTOR_RANDOM(SIZE(X))
VECTOR_RANDOM=X+20
END FUNCTION VECTOR_RANDOM