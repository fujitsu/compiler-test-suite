call s
print *,'pass'
end
subroutine s
character (len=6) :: n
n = repeat('ho',3)
if(n.ne.'hohoho') print *,'err'
end
