complex(KIND =16)::cmp
real::rr
cmp = (1.5574077,2.5574077)
rr = ATAN(cmp%re,cmp%im)
if( rr .ne.  0.546995640) print*,101
PRINT*,"PASS"
end
