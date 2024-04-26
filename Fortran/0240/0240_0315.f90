call s
print *,'pass'
end
subroutine s
character(len=6) shorter
shorter = trim("longer ")
if(shorter.ne."longer") print *,'err'
end
