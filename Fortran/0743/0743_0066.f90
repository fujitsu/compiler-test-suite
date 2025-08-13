SUBROUTINE AMAIN(TTERM)
CHARACTER TTERM*6
CALL CPLU(TTERM)
WRITE(30,*) TTERM()
END
CHARACTER*6 T
external T
CALL AMAIN(T)
print *,'pass'
end
SUBROUTINE CPLU(P)
character*6 P
if (P()/='abcdef')print *,'error'
END
FUNCTION T()
CHARACTER*(*) T
if (Len(T)/=6)print *,'error'
T='abcdef'
end
