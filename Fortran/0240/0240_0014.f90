call test()
print *,'pass'
end
subroutine test()
integer, dimension (2,3) :: a, b
logical, dimension (2) :: c
logical, dimension (3) :: d
logical :: e
a = reshape((/1,2,3,4,5,6/), (/2,3/))
b = reshape((/1,2,3,5,6,4/), (/2,3/))
e = any(a==b)
d = any(a==b, 1)
c = any(a==b, 2)

if (e.neqv..true.   )print *,'err'
if (d(1).neqv..true.   )print *,'err'
if (d(2).neqv..true.   )print *,'err'
if (d(3).neqv..false.   )print *,'err'
if (c(1).neqv..true.   )print *,'err'
if (c(2).neqv..true.   )print *,'err'
end
