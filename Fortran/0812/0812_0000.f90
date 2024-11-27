integer:: t=1,var
block
  pointer (ptr, var)
  ptr=loc(t)
if (var/=1) print *,101
end block
if (var/=1) print *,102
print *,'pass'
end
