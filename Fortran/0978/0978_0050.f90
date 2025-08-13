n=2
call t(n)
write(14,*)2
rewind 14
read(14,*) i
if (2/=i)print *,'error-2'
k=4
call w(k)
print *,'pass'
contains
subroutine w(k)
intent(in)::k
write(15,*) k
end subroutine
subroutine t(j)
integer,optional,value::j
j=10
end subroutine
end
subroutine s(i)
i=10
end
