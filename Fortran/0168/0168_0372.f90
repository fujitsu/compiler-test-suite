subroutine s1
use IEEE_arithmetic
integer (8)::k1=2,k2=3
integer (4)::n1=2,n2=3
write(1,*)ieee_selected_real_kind(k1,k2)
write(1,*)ieee_selected_real_kind(n1,n2)
end
subroutine s2
integer (8)::k1=2,k2=3
integer (4)::n1=2,n2=3
write(1,*)selected_real_kind(k1,k2)
write(1,*)selected_real_kind(n1,n2)
end
call s1
call s2
rewind 1
read(1,*) k;if(k/=4.and.k/=2) print *,101
read(1,*) k;if(k/=4.and.k/=2) print *,101
read(1,*) k;if(k/=4.and.k/=2) print *,101
read(1,*) k;if(k/=4.and.k/=2) print *,101
print *,'pass'
end
