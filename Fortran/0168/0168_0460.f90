subroutine s1(k)
 integer,allocatable:: a(:,:,:)
allocate(a(k,k,k))
 a((k),(k),k)=1
if (a(k,k,k)/=1) print *,101
end
call s1(2)
print *,'pass'
end
