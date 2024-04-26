PROGRAM MAIN
integer(8), parameter :: c = 55
character(len =1,kind =1),parameter :: b = achar(c,4)
integer::d
character(len =1, kind = 1)::backend
d = 55 
backend = achar(d,4)

if (b/='7') print *,201,b
k=0
if (b/='7') k=1
if (b.NE.backend) then
 k=k+2
endif
if (k/=0) print *,999
print *,'pass'
end
