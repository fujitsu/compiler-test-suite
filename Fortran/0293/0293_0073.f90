subroutine s
 enum,bind(c)
  enumerator:: a=2 ,b=3
  enumerator:: c
 end enum
 if (a/=2)print *,101
 if (b/=3)print *,102
 if (c/=4)print *,103
 if (kind(a)/=4)print *,104
end
call  s
print *,'pass'
end

