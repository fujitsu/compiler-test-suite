INTEGER,DIMENSION(101,102,103,5)::A
CALL SUB(A)
if ((loc(a(1,1,1,2))-loc(a(1,1,1,1))) .eq. 4 ) then
  print *,loc(a(1,1,1,2))-loc(a(1,1,1,1))
  stop "NG1"
endif
print *, "PASS"
END
SUBROUTINE SUB(I)
END
