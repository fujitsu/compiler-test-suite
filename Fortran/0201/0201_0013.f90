interface
   subroutine s1(k) bind(c,name='ss1')
   end 
end interface
call s1(k)
if (k/=2) print *,101
print *,"pass"
end
subroutine s1(k) bind(c,name='ss2')
k=1
end
subroutine s1(k) bind(c,name='ss1')
k=2
end 
