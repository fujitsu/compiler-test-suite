subroutine s1
integer,pointer:: a1(:),a2(:),a3(:)
allocate(a1(5),a2(5),a3(5))
forall (n=1:5)
a1(n)=1
a2(n)=1
a3(n)=1
end forall
if (any(a1/=1)) print *,101
if (any(a2/=1)) print *,102
if (any(a3/=1)) print *,103
end
call s1
print *,'pass'
end
