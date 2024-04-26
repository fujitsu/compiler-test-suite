call s
print *,'pass'
end
subroutine s
real (kind=selected_real_kind(3,3)) :: a,b
if(kind(a).ne.kind(b)) print *,'err'
end
