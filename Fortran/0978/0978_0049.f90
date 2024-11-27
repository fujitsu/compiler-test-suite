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
call s((3))
write(13,*)3
rewind 13
read(13,*) i
if (3/=i)print *,'error-3'
k=4
call w(k)
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
end
subroutine s(i)
i=10
end
