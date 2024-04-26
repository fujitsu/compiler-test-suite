call s
print *,'pass'
end
subroutine s
character(len=7) :: c
k = max(-14,3,0,-2,19,1)
c = max("abcdefg","d","xyz")
if(k.ne.19) print *,'err1'
if(c.ne."xyz ") print *,'err2'
end
