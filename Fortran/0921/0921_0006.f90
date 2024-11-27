INTEGER,PARAMETER::M=5
INTEGER I
INTEGER  Z(M)

DO CONCURRENT (integer::I=1:M)
 block
  DO CONCURRENT (integer::I=1:M)
  END DO
 end block
END DO

end
