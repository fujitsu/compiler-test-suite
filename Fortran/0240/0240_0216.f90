call s
print *,'pass'
end
subroutine s
character(len=7) :: c
k = min(-14,3,0,-2,19,1)
c = min("abc","defghij","xyz")
if(k.ne.-14) print *,'err1'
if(c.ne."abc    ") print *,'err2'
end
