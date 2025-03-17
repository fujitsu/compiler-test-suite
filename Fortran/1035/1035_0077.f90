integer, DIMENSION(40,40) :: da_Dis
integer ::  d_Delta
i_NumGrps=1
i_NumBlks=4
CALL loaddis(da_Dis,40*40)
d_Delta = 0.0D0
DO IS=2,i_NumBlks
   IS1 = IS - 1
   DO IR=1,IS1
      DO i=1,i_NumGrps
         ISS = (i-1)*i_NumBlks + IS
         d_Delta = d_Delta + da_Dis(1,ISS)
      END DO
   END DO
END DO
if (d_Delta/=6)print *,'error'
print *,'pass'
END
SUBROUTINE loaddis(da_Dis,i)
integer :: da_Dis(i)
da_Dis =  1
END SUBROUTINE loaddis
