subroutine s1
common /xx/ k1,k2
bind(c)::/xx/
if (k1/=0)print *,101
if (k2/=0)print *,102
end
call s1
print *,'pass'
end
