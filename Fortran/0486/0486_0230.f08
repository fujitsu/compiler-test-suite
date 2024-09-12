integer,parameter:: a(10)=1
logical:: x=is_contiguous(a)
if (.not.x) print *,101
if (.not.is_contiguous(a)) print *,201
print *,'pass'
end
