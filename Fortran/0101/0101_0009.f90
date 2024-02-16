type get_value(kind,m,n,o)
        INTEGER, KIND :: kind
        INTEGER, KIND :: m,n,o
        integer(kind)::val = MERGE_BITS(m,n,o)
END TYPE

TYPE(get_value(4,20,10,14)) :: a
if( a%val .eq. 4)then
  print*,"PASS"
else
  print*,"FAIL"
end if
end
