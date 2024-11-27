call s(1)
write(11,*)1
rewind 11
read(11,*) i
if (1/=i)print *,'error-1'
call t(2)
write(12,*)2
rewind 12
read(12,*) i
if (2/=i)print *,'error-2'
k=4
call w(k)
if (k/=4)write(6,*) "NG"
call w(22)
write(13,*)22
rewind 13
read(13,*) i
if (22/=i)print *,'error-2'
n1=1;n2=2
call s(n1+n2)
call t(n1+n2)
print *,'pass'
contains
subroutine w(k)
intent(in)::k
write(100,*) k
end subroutine 
subroutine t(j)
integer,optional,value::j
j=10
end subroutine
subroutine s(i)
value::i
i=10
end subroutine
end
