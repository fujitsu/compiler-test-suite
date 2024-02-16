call s1
call s2
print *,'pass'
contains
subroutine s1
real(4)::i(3),l(3)
integer::j
l=2
do j=1,3
i(j)=l(j)**2
end do
if(any(i/=[4.0,4.0,4.0])) print *,'err1'
end subroutine s1
subroutine s2
real(8)::i(3),l(3)
integer::j
l=2
do j=1,3
i(j)=l(j)**5
end do
if(any(i/=[32.0,32.0,32.0])) print *,'err1'
end subroutine s2
end
