PROGRAM main
  TYPE ty(k,k1)
   INTEGER,KIND::k,k1
   INTEGER(KIND=k)::ii(k)
   CHARACTER(LEN=k1)::ch 
  END TYPE
  TYPE(ty(2,4))::obj
  DATA obj / ty(2,4)((/2,3/),"abc")/
if(obj%ii(1) == 2 .and. obj%ch == "abc") then
print*,"PASS"
else 
print*,"ERROR"
endif
END PROGRAM
