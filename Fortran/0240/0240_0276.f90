call s
print *,'pass'
end
subroutine s
integer (kind=selected_int_kind(3)) :: i,j
if(kind(i).ne.kind(j)) print *,'err'
end
