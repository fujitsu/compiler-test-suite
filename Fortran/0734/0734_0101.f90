SUBROUTINE ftest

  INTEGER :: j

  REAL,POINTER :: z01(:,:),z02(:,:),z03(:,:),z04(:,:),z05(:,:)
  REAL,POINTER :: z06(:,:),z07(:,:),z08(:,:),z09(:,:),z10(:,:)
  REAL,POINTER :: z11(:,:),z12(:,:),z13(:,:),z14(:,:),z15(:,:)
  REAL,POINTER :: z16(:,:),z17(:,:),z18(:,:),z19(:,:),z20(:,:)
  REAL,POINTER :: z21(:,:),z22(:,:),z23(:,:),z24(:,:),z25(:,:)
  REAL,POINTER :: z26(:,:),z27(:,:),z28(:,:),z29(:,:),z30(:,:)
  REAL,POINTER :: z31(:,:),z32(:,:),z33(:,:),z34(:,:),z35(:,:)
  REAL,POINTER :: z36(:,:),z37(:,:),z38(:,:),z39(:,:),z40(:,:)

  j=10

  CALL subtest(z01(:,j),z02(:,j),z03(:,j),z04(:,j),z05(:,j),&
       z06(:,j),z07(:,j),z08(:,j),z09(:,j),z10(:,j),&
       z11(:,j),z12(:,j),z13(:,j),z14(:,j),z15(:,j),&
       z16(:,j),z17(:,j),z18(:,j),z19(:,j),z20(:,j),&
       z21(:,j),z22(:,j),z23(:,j),z24(:,j),z25(:,j),&
       z26(:,j),z27(:,j),z28(:,j),z29(:,j),z30(:,j),&
       z31(:,j),z32(:,j),z33(:,j),z34(:,j),z35(:,j),&
       z36(:,j),z37(:,j),z38(:,j),z39(:,j),z40(:,j) &
       )

END SUBROUTINE ftest
print *,'pass'
end 
subroutine subtest
end
