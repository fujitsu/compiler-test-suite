subroutine s1
  integer:: IA(2)
  integer,parameter::n1=kind(is_contiguous( IA ))
  n2=kind(is_contiguous( IA ))
  if (n1/=8) print *,101,n1
  if (n2/=8) print *,102,n2
end
call s1
print *,'pass'
end
