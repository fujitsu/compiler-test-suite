integer:: a(2) 
integer:: b=ubound( a ,dim=1)
integer:: c=lbound( a ,dim=1)
integer:: d=size  ( a)
integer:: e(1)=shape ( a)
if (b/=2) print *,101
if (c/=1) print *,102
if (d/=2) print *,103
if (e(1)/=2) print *,104
print *,'pass'
end
