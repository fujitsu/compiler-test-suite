TYPE get_value(kind,m,n)
        INTEGER, KIND :: kind
        INTEGER, KIND :: m,n
        logical(kind)::val = BLT(m,n)
END TYPE

TYPE(get_value(4,20,10)) :: a
if( a%val .eqv. .false.)then
  print*,"PASS"
else
  print*,"FAIL"
end if
end
