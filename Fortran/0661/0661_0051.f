      CALL S1
      CALL S2
      PRINT *,'PASS'
      END
      SUBROUTINE S1
      IMPLICIT LOGICAL(A,B)
      DATA A1,A2,A3/3*.TRUE./
      PARAMETER(B1=.TRUE.,B2=B1,B3=B2)
      PARAMETER(APA=B1.OR.B2.NEQV.B3,
     1APB=B1.NEQV.B2.OR.B3,
     2APC=B1.OR.B2.NEQV.B3,
     3APD=B1.NEQV.B2.OR.B3,
     4APE=B1.NEQV.B2.NEQV.B3,
     5APF=B1.NEQV.B2.NEQV.B3)
      AFA()=A1.OR.A2.NEQV.A3
      AFB()=A1.NEQV.A2.OR.A3
      AFC()=A1.OR.A2.NEQV.A3
      AFD()=A1.NEQV.A2.OR.A3
      AFE()=A1.NEQV.A2.NEQV.A3
      AFF()=A1.NEQV.A2.NEQV.A3
      AAA=A1.OR.A2.NEQV.A3
      AAB=A1.NEQV.A2.OR.A3
      AAC=A1.OR.A2.NEQV.A3
      AAD=A1.NEQV.A2.OR.A3
      AAE=A1.NEQV.A2.NEQV.A3
      AAF=A1.NEQV.A2.NEQV.A3
      IF (A1.OR.A2.NEQV.A3)print *,'fail1'
      IF (AAA)print *,'fail2'
      IF (APA)print *,'fail3'
      IF (AFA())print *,'fail4'
      IF (A1.NEQV.A2.OR.A3)print *,'fail5'
      IF (AAB)print *,'fail6'
      IF (APB)print *,'fail7'
      IF (AFB())print *,'fail8'
      IF (A1.OR.A2.NEQV.A3)print *,'fail9'
      IF (     AAC)print *,'fail10'
      IF (     APC)print *,'fail11'
      IF (     AFC())print *,'fail12'
      IF (A1.NEQV.A2.OR.A3)print *,'fail13'
      IF (AAD)print *,'fail14'
      IF (APD)print *,'fail15'
      IF (AFD())print *,'fail16'
      IF (.NOT.(A1.NEQV.A2.NEQV.A3))print *,'fail17'
      IF (.NOT.AAE)print *,'fail18'
      IF (.NOT.APE)print *,'fail19'
      IF (.NOT.AFE())print *,'fail20'
      IF (.NOT.(A1.NEQV.A2.NEQV.A3))print *,'fail21'
      IF (.NOT.AAF)print *,'fail22'
      IF (.NOT.APF)print *,'fail23'
      IF (.NOT.AFF())print *,'fail24'
      END
      SUBROUTINE S2
      IMPLICIT LOGICAL(A,B)
      DATA A1,A2,A3/3*.TRUE./
      PARAMETER(B1=.TRUE.,B2=B1,B3=B2)
      PARAMETER(APA=B1.AND.B2.NEQV.B3,
     1APB=B1.NEQV.B2.AND.B3,
     2APC=B1.AND.B2.NEQV.B3,
     3APD=B1.NEQV.B2.AND.B3,
     4APE=.NOT.B1. OR.B2.AND..NOT.B3,
     5APF=      .NOT.B1.AND.B2. OR..NOT.B3)
      AFA()=A1.AND.A2.NEQV.A3
      AFB()=A1.NEQV.A2.AND.A3
      AFC()=A1.AND.A2.NEQV.A3
      AFD()=A1.NEQV.A2.AND.A3
      AFE()=.NOT.A1. OR.A2.AND..NOT.A3
      AFF()=      .NOT.A1.AND.A2. OR..NOT.A3
      AAA=A1.AND.A2.NEQV.A3
      AAB=A1.NEQV.A2.AND.A3
      AAC=A1.AND.A2.NEQV.A3
      AAD=A1.NEQV.A2.AND.A3
      AAE=.NOT.A1. OR.A2.AND..NOT.A3
      AAF=      .NOT.A1.AND.A2. OR..NOT.A3
      IF (A1.AND.A2.NEQV.A3)print *,'fail25'
      IF (AAA)print *,'fail26'
      IF (APA)print *,'fail27'
      IF (AFA())print *,'fail28'
      IF (     (A1.NEQV.A2.AND.A3))print *,'fail29'
      IF (     AAB)print *,'fail30'
      IF (     APB)print *,'fail31'
      IF (     AFB())print *,'fail32'
      IF (A1.AND.A2.NEQV.A3)print *,'fail33'
      IF (     AAC)print *,'fail34'
      IF (     APC)print *,'fail35'
      IF (     AFC())print *,'fail36'
      IF (     (A1.NEQV.A2.AND.A3))print *,'fail37'
      IF (     AAD)print *,'fail38'
      IF (     APD)print *,'fail39'
      IF (     AFD())print *,'fail40'
      IF (     (.NOT.A1. OR.A2.AND..NOT.A3))print *,'fail41'
      IF (     AAE)print *,'fail42'
      IF (     APE)print *,'fail43'
      IF (     AFE())print *,'fail44'
      IF (      .NOT.A1.AND.A2. OR..NOT.A3 )print *,'fail45'
      IF (     AAF)print *,'fail46'
      IF (     APF)print *,'fail47'
      IF (     AFF())print *,'fail48'
      END
