  IMPLICIT INTEGER(p-r)
  integer(8)::r
  r=23
  BLOCK
    q = 65
    r=loc(q)
  END BLOCK

  IF (q /= 65) print*,101
  if(r==loc(q)) then
    print*,"pass"
  else
    print*,r
  endif
END
