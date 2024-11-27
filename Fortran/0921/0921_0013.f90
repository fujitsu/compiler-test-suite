INTEGER,PARAMETER::M=5
INTEGER I
INTEGER  Z(M)

DO CONCURRENT (integer::I=1:M)
 block
  DO concurrent (integer::I=1:M)
  END Do
 end block
END DO

end
