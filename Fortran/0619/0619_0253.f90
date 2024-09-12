TYPE E
  SEQUENCE
  LOGICAL(KIND=1)::R,M,O
  DOUBLE PRECISION,DIMENSION(:),POINTER::YX=>null(),V=>null()
  LOGICAL(KIND=1)::RR
END TYPE E
type(E) IGFRI
if (associated(IGFRI%YX))print *,101
if (associated(IGFRI%V))print *,102
print *,'pass'
END PROGRAM
