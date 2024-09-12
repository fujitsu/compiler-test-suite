PROGRAM main
  TYPE ty(k,k1)
   INTEGER,KIND::k,k1=4
   INTEGER(KIND=k)::ii(k)
   CHARACTER(LEN=k+k1)::ch
  END TYPE
  TYPE(ty(2,4))::obj
  PARAMETER(obj=ty(k=2)((/2,3/),"ABC"))
if(obj%ii(1) .eq. 2 .and. obj%ch .eq. "ABC")then
print*,"PASS"
else
print*,"ERROR"
endif
END PROGRAM
