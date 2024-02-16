TYPE get_value(kind,m,n,o)
        INTEGER*4, KIND :: kind
        INTEGER*4, KIND :: m,n,o
        INTEGER(kind=kind)::val = DSHIFTR(m,n,o)
END TYPE
TYPE(get_value(4,20,10,30)) :: a
if( a%val .eq. 80)then
  print*,"PASS"
else
  print*,"FAIL"
end if
end

