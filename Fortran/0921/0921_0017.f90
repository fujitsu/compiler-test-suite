INTEGER,PARAMETER::M=5
INTEGER I
INTEGER  Z(M)

DO CONCURRENT (integer::I=1:M)
 block
  FORALL (integer::I=1:M)
  END FORALL
 end block
END DO

end
