complex(16):: a
call sub(a)
if (a%re.ne.1.0) print *,'err'
if (a%im.ne.0.0) print *,'err'
print *,'pass'
end
subroutine sub(a)
complex(16):: a,b
data b%re /1.0/
a=b
end
