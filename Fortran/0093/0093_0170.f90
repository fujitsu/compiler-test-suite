complex(KIND =16)::cmp
complex(KIND =8)::cmp1
real::rr
cmp = (1.5574077,2.5574077)
cmp1 = (3.5574077,4.5574077)
rr = ATAN(cmp%re,cmp1%im)
if(rr .ne. 0.329289347) print*,101
PRINT*,"PASS"
end
