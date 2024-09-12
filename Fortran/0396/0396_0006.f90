
subroutine sub
integer*8:: i
real a(kind(i),kind(i),kind(i),kind(i))
real b(kind(i),kind(i),kind(i),kind(i))
a=0
b=0
end

call sub
print *,'pass'
end
