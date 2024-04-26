TYPE get_value(kind,m)
        INTEGER, KIND :: kind
        INTEGER, KIND :: m
        integer(kind)::val = popcnt(m)
END TYPE

TYPE(get_value(1,126)) :: a
if( a%val .eq. 6)then
  print*,"PASS"
else
  print*,"FAIL"
end if
end
