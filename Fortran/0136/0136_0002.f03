subroutine s(n)
character(*) n
character(:),allocatable::n2
allocate(character(len(n))::n2)
if(len(n2)/=2) print *,'err'
end
character(len("12"))::ch1
ch1="12"
call s("aa")
call s(ch1)
call s("12"(1:2))
print *,'pass'
end
