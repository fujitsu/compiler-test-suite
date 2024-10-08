MODULE m
TYPE t(k)
INTEGER, KIND :: k
REAL(k),POINTER :: vector(:) => NULL()
CONTAINS
FINAL :: finalize_t1s, finalize_t1v, finalize_t2e
END TYPE
CONTAINS
SUBROUTINE finalize_t1s(x)
TYPE(t(KIND(0.0))) x
IF (ASSOCIATED(x%vector)) DEALLOCATE(x%vector)
END SUBROUTINE
SUBROUTINE finalize_t1v(x)
TYPE(t(KIND(0.0))) x(:)
DO i=LBOUND(x,1),UBOUND(x,1)
IF (ASSOCIATED(x(i)%vector)) DEALLOCATE(x(i)%vector)
END DO
END SUBROUTINE
ELEMENTAL SUBROUTINE finalize_t2e(x)
TYPE(t(KIND(0.0d0))),INTENT(INOUT) :: x
IF (ASSOCIATED(x%vector)) DEALLOCATE(x%vector)
END SUBROUTINE
END MODULE
SUBROUTINE example(n)
USE m
TYPE(t(KIND(0.0))) a,b(10),c(n,2)
TYPE(t(KIND(0.0d0))) d(n,n)
END SUBROUTINE
print *,'pass'
end
