integer,dimension(1:0) :: a
integer,dimension(1:0) :: b
integer,dimension(1:0) :: c
equivalence (b,c)
a = 1
b = a
c = 2
call sub01(a+b)
print *,a+b+c
end

subroutine sub01(a)
integer a(*)
a(1:0) = 1
end
