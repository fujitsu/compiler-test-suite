TYPE get_value(kind,m,n)
        INTEGER, KIND :: kind
        INTEGER, KIND :: m,n
        integer(kind)::val = SHIFTR(m,n)
END TYPE

TYPE(get_value(4,111,3)) :: a
if( a%val .ne. 13)print*,"100"
print*,"PASS"
end
