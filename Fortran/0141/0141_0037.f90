integer,pointer::a(:)
call sub(a)
print *,'pass'
contains
subroutine sub(a)
integer,pointer::a(:)
namelist /nam/a
allocate(a(2))
call sub1(a)
write(1,nam)
call sub2(a)
end subroutine
subroutine sub1(a)
integer,pointer::a(:)
a=[1,2]
end subroutine
subroutine sub2(a)
integer,pointer::a(:)
a=a+1
end subroutine
end	
