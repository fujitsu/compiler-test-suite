INTEGER,PARAMETER::M=5
INTEGER I
INTEGER Z(M)
DO CONCURRENT (integer::I=1:M,II=1:M:2,Z(I).eq. 0.00)
 block
  integer::I
  forall (integer::I=1:5)
  end forall
  DO CONCURRENT (integer::I=1:M,II2=1:M:2,Z(I).eq. 0.00)
  forall (integer::II=1:5)
    j =  II + I +II2
  end forall
  END DO
 end block
END DO

end
