INTEGER,PARAMETER::M=5
INTEGER I
INTEGER  Z(M)

DO CONCURRENT (integer::I=1:M)
 block
  integer::I
  DO CONCURRENT (integer::I=1:M)
  DO CONCURRENT (I=1:M)
  END DO
  END DO
 end block
END DO

end
