TYPE get_value(kind,m)
        INTEGER, KIND :: kind
        INTEGER, KIND :: m
        integer(kind)::val = maskr(m,kind)
END TYPE

TYPE(get_value(1,1)) :: a
if( a%val .eq. 1)then
  print*,"PASS"
else
  print*,"FAIL"
end if
end

