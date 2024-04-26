program main
integer,dimension(1:10)::a,b
integer c, res

a = 5
b = a(1)
c = 10
call sub(a,b,c,res)

print *,res
end

subroutine sub(a,b,c,res)
integer,dimension(1:10)::a,b,d
integer c,res

d = 0

do i=1,c,10000
  d(i) = a(i) + b(i)
enddo

res = d(10)
end subroutine
