subroutine s1
integer a1(3)
integer,parameter::a2(3)=[1,2,3]
logical,parameter::n1=is_contiguous(a1(3:1:-1))
logical,parameter::n2=is_contiguous(a2(3:1:-1))
logical::k1
logical::k2
if (n1) print *,101
if (n2) print *,102
k1=is_contiguous(a1(3:1:-1))
k2=is_contiguous(a2(3:1:-1))
if (k1) print *,201
if (k2) print *,202
i1=1
i3=3
im1=-1
k1=is_contiguous(a1(i3:i1:im1))
k2=is_contiguous(a2(i3:i1:im1))
if (k1) print *,203
if (k2) print *,204
end
call s1
print *,'pass'
end
