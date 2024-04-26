subroutine s0(k)
if (k==1) then
k=2
endif
k=k+2
end
subroutine s1(i)
if (i==1) then
i=2
endif
i=i+2
end

i=1
call s1(i)
print *,'pass'
end

