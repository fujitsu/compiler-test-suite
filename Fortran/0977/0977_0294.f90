call aaaaa
print *,'pass'
contains
subroutine aaaaa
integer,parameter::ii=-1
real(kind=4)::r
r=2.783
call s1(int(r,1**1))
call s1(int(r,1**(-1)))
call s1(int(r,1**ii))
end subroutine
subroutine s1(i1)
integer(kind=1)::i1
if(i1.ne.2_1) write(6,*) "NG"
end subroutine
end
