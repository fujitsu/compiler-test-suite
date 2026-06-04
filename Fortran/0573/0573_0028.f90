INTERFACE GEN
 SUBROUTINE S1 (J, PI)
 INTEGER::J
 INTEGER,allocatable:: PI
 END SUBROUTINE S1
 SUBROUTINE S2 (K, PR)
 INTEGER K
 REAL,allocatable:: PR
 END SUBROUTINE S2
 END INTERFACE
 REAL,allocatable:: r
 INTEGER,allocatable:: i
 CALL GEN(7, NULL(r))
 CALL GEN(10, NULL(i))
print*,"pass"
END
 SUBROUTINE S1 (J, PI)
 INTEGER::J
 INTEGER,allocatable:: PI
 allocate(PI)
  PI = 12
 if(J.ne.10)print*,"101"
 END SUBROUTINE S1
 SUBROUTINE S2 (K, PR)
 INTEGER K
 REAL,allocatable:: PR
 if(K.ne.7)print*,"101"
 allocate(PR)
  PR = 12.34
 END SUBROUTINE S2

