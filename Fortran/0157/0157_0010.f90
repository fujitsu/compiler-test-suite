subroutine s1
character(:),pointer:: p
k=-11
allocate(character(k):: p)
if (len(p)/=0 ) print *,101,len(p)
end
call s1
print *,'pass'
end

