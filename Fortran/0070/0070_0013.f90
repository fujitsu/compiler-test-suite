integer,allocatable::a(:)
if (is_contiguous(a)) then
else
 print *,101
endif
print *,'pass'
end
