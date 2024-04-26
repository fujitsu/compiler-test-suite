INTEGER :: I,Arr(10),J
J=10
Arr = 20

associate(aa=>i)
 PRINT *,J,(Arr((aa)),aa=1,10)
 PRINT *,J,(Arr(aa),aa=1,10)
end associate
END
