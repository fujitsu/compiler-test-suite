result = 5.0*(5.0**3)*5.0
if (abs(result-3125.)>0.001)write(6,*) "NG"
write(1,*) 5.0,3
call sub
print *,'pass'
END
subroutine sub
rewind 1
read(1,*) a,i
result = a*(a**i)*a
if (abs(result-3125.)>0.001)write(6,*) "NG"
end
