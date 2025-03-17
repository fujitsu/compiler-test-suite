INTEGER,DIMENSION(101,102,103)::A,B,C
CALL SUB(A)
if ((loc(b)-loc(a)) .eq. -4 ) stop "NG1"
if ((loc(c)-loc(b)) .eq. -4 ) stop "NG2"
print *, "PASS"
END
SUBROUTINE SUB(TMP)
TYPE TAG
  INTEGER A,B,C
END TYPE
TYPE(TAG),DIMENSION(101,102,103)::TMP
END
