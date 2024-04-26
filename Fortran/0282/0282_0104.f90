program main
logical*2, parameter::a(8) = (/.true._2, .true._2 , .false._2, .false._2 , &
                               .true._2, .false._2, .true._2 , .false._2 /)
logical*2, parameter::b(0) = reshape(a, (/0/))

logical*2, parameter::c(12) = (/.true._2, .true._2 , .false._2, .false._2 , &
                               .true._2, .false._2, .true._2 , .false._2,&
                               .true._2,.false._2,.true._2,.false._2 /)

logical*2, parameter::d(0) = reshape(c, (/0/))

logical*8::e = dot_product(b, d)
logical*8::f

integer::h = kind(dot_product(b,d))
f = dot_product(b,d)

print*,e
print*,f

print*, e, '--', f
if(e.neqv.f) then
print*, '??? (Error:) ???'
else
print*, 'pass'
endif

call check1(h, kind(dot_product(b,d)))
end

subroutine check1(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine
