INTEGER :: i,Arr(10),J
J=10
Arr = 20

associate(aa=>J)
 PRINT *,aa,(Arr((i)),i=1,10)
 PRINT *,aa,(Arr(i),i=1,10)
end associate
END
