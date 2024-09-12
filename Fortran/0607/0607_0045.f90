TYPE base_type
 Integer :: i1=1
END TYPE
 
TYPE,EXTENDS(base_type) :: extd_type
 Integer :: i2=1
END TYPE
 
TYPE(extd_type),pointer :: ptr

allocate(ptr)
SELECT TYPE(A=>funA(ptr))
 TYPE IS(extd_type)
  if(A%i1 == 3) then
    print*,'PASS'
  else 
    print*,'FAIL'
  endif
END SELECT

contains
FUNCTION funA(tgt)
CLASS(base_type),POINTER :: funA
TYPE(extd_type),TARGET :: tgt
tgt%i1=3
funA => tgt
END FUNCTION
END
