TYPE ty1
  INTEGER::i1
END TYPE

  CLASS(ty1),POINTER::dmy(:)=>null()
k=0
allocate(ty1::dmy(1))
  SELECT TYPE(dmy)
    TYPE IS(ty1)
      k=1
  END SELECT
  if (k/=1)print *,101
print *,'pass'
END PROGRAM
