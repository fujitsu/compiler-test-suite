module m1
type tt
    integer(8)::i
end type
end module

 use m1
  IMPLICIT type(tt)(p-r)
  r%i=23
  BLOCK
    q%i = 65
    r%i=loc(q)
  END BLOCK

  IF (q%i /= 65) print*,101
  if(r%i==loc(q)) then
    print*,"pass"
  else
    print*,r%i
  endif
END
