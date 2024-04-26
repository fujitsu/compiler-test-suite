TYPE get_value(kind,m,n)
        INTEGER, KIND :: kind
        INTEGER, KIND :: m,n
        integer(kind)::val = shiftl(m,n)
END TYPE

TYPE(get_value(4,111,3)) :: a
if( a%val .ne. 888)print*,"100"
print*,"PASS"
end
