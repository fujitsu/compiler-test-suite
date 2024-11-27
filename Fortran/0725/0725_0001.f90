integer,dimension(1:0) :: a
integer,dimension(1:0) :: b
integer,dimension(1:0) :: c
integer,dimension(1:1) :: d
equivalence (b,c)
equivalence (d,c)
a = 1
b = a
c = 2
d = sum(b) + sum(c) + sum(b+c)
call sub01(a+b)
print *,a+b+c
print *,d
end

subroutine sub01(a)
integer a(*)
a(1:0) = 1
end
