subroutine s1
integer,parameter::a(5)=[1,2,3,4,5]
integer::b(5)
integer,allocatable::c(:)
logical,parameter::n1=is_contiguous(array=a)
logical,parameter::n2=is_contiguous(array=a(::2))
integer,parameter::n3=kind(is_contiguous(array=a))
if (.not.is_contiguous(array=b)) print *,101
if (     is_contiguous(array=b(::2))) print *,102
if (.not.n1) print *,103
if (     n2) print *,104
if (.not.is_contiguous(array=c)) print *,106
if (kind(is_contiguous(array=c))/=4) print *,107
if (     n3/=4) print *,105
end
call s1
print *,'pass'
end
