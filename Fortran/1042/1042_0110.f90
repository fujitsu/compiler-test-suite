type x
 integer scalar
 integer array(5)
end type

 type (x)::ta(5)

 integer::i

 call sub(i)

 ta(i:5:i)%scalar   = i
 ta(i::i)%scalar    = 1
 ta(:5:i)%scalar    = 1
 ta(::i)%scalar     = i

 ta(i)%array(i:5:i) = i
 ta(i)%array(i::i)  = i
 ta(i)%array(:5:i)  = i
 ta(i)%array(::1)   = i

 if (ta(i)%array(1) == 1 ) then
 print *,'pass'
 else
 print *,ta(1)
 print *,ta(2)
 endif

end

subroutine sub(i)
integer::i
i=1
end subroutine
