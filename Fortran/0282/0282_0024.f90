program main
character(len = 4,kind = 4), parameter::a(12) = (/"abc",  "def",  "ghi",  "jkl", &
                                         "lmn",  "nop",  "pqr",  "rst", &
                                                                     "uvw",  "abc",  "def",  "abc" /)


character(len = 4,kind = 4), parameter::b(12) = (/"abc",  "fed",  "ghi",  "jkl", &
                                         "lmn",  "nop",  "rqp",  "tsr", &
                                                                     "uvw",  "abc",  "def",  "abc" /)

character(len = 4,kind = 4), parameter::m(3,2,2) = reshape(a, (/3,2,2/))

character(len = 4,kind = 4), parameter::n(3,2,2) = reshape(b, (/3,2,2/))


integer, parameter::z = 2
logical*4::c(3,2) = all(m==n,z)
logical*4::d(3,2)

d = all(m==n,z)

print*,c
print*,d

do i=1,3
do j=1,2
print*, c(i,j), '--', d(i,j)
if(c(i,j).neqv.d(i,j)) then
print*, '??? (Error: L->L) ???'
else
print*, 'L -> L'
endif
enddo
enddo

end
