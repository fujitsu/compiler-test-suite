integer:: a(3),v(3)=(/2,3,1/)
a(v)=(/12,13,11/)
if (any(a/=(/11,12,13/)))write(6,*) "NG"
print *,'pass'
end
