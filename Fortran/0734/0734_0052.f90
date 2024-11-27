integer,parameter::j=4
INTEGER(j) KK
REAL(8) ,DIMENSION(1:1,1:1)::X
  DO K=1,1
    KK=8_j
    X=3.7789290345307963e-5_8
    SELECT CASE( 78 )
      CASE (-1:)
        KK=KK-(32767)
    END SELECT 
  END DO
CALL I4CHK1(1,-32759_j,KK,'INT8-P VAR CHECK')
CALL R8CHK1(2,3.7789290345307963e-5_8,X(1,1),1.0E+3_8, &
          'REL8-P VAR CHECK')
print *,'pass'
END 
 subroutine I4CHK1(I,V1,V2,C)
 integer(4) V1,V2
 character*(*) C
 if (V1/=V2) then
      print *,I,'error!'//C,V1,V2
 endif
 end
 subroutine R8CHK1(I,V1,V2,V3,C)
 REAL(8) V1,V2,V3
 character*(*) C
 if (abs(V1-V2)>V3) then
      print *,I,'error!'//C,V1,V2
 endif
 end

