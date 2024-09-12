subroutine s1
parameter (k=selected_real_kind(10,5))
if (k/=8)print *,k
end
call s1
print *,'pass'
end
