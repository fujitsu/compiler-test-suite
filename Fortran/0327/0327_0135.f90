call sub()
end

subroutine sub()
complex :: x,y
real :: r(2)
save x,y
equivalence(x,r)
r(2)=3.0
print *,'pass'
end
