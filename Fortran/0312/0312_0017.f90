TYPE::PIVYP2
  INTEGER(1_1)::M,K
  INTEGER(1_2)::KR,V,W
  INTEGER HE,J
END TYPE
TYPE(PIVYP2) ::F(59:60,29:29)
INTEGER*8 EKUYYD27N
TYPE(PIVYP2) ,DIMENSION(2,1),PARAMETER::AAA=RESHAPE((/( &
          PIVYP2(1,2,3,4,5,6,7),EKUYYD27N= &
          -59805,-59804)/),(/2,1/))
INTEGER MALLOC

F=AAA

print *, F(59,29)

END PROGRAM
