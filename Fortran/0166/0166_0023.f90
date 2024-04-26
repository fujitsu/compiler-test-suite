use mod
complex:: a
call sub(a)
if (a%re.ne.0.0) print *,'err'
if (a%im.ne.1.0) print *,'err'
print *,'pass'
end
module mod
contains
subroutine sub(a)
save
complex:: a,b
data b%im /1.0/
a=b
end subroutine
end
