integer :: k,res
k=3
res = selected_real_kind (r=k)
res = selected_real_kind (radix=k)
call sub(selected_real_kind (p=k),selected_real_kind (radix=k),selected_real_kind(r=k))
print *,"pass"
contains
subroutine sub(dp,dradix,dr)
integer :: dp,dradix,dr
if(dp /= selected_real_kind (p=3)) print *,101
if(dradix /= selected_real_kind (radix=3)) print *,102
if(dr /= selected_real_kind (r=3)) print *,103
end subroutine
end
