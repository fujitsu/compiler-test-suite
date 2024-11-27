INTEGER,PARAMETER::M=5
INTEGER I
INTEGER  Z(M)

DO CONCURRENT (integer::I=1:M,II=1:M:2,Z(I).eq. 0.00)
 block
 integer::I
  DO CONCURRENT (integer::I=1:M,II=1:M:2,Z(I).eq. 0.00)
  END DO
 end block
END DO

end
