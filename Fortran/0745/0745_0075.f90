program p
integer,target:: a(100)
a = 1
call sub1(a(1:100:3))
call chk11
a = 1
call sub2(a(2))
call chk12
a = 1
call sub3(a(1:100:3))
a = 1
call sub4(a(2))
a = 1
call sub5(a(1:100:3))
call chk13
a = 1
call sub6(a(2))
call chk14
print *,'pass'
contains
subroutine sub1(b)
integer, target:: b(:)
b(1) = 3
write(11,*)a(1),b(1)
end subroutine
subroutine sub2(b)
integer, target:: b
b = 3
write(12,*)a(2),b
end subroutine
subroutine sub3(b)
integer, target:: b(:)
b(1) = 3
if (any((/a(1),b(1)/)/=3))call err(1)
end subroutine
subroutine sub4(b)
integer, target:: b
b = 3
if (any((/a(2),b/)/=3))call err(2)
end subroutine
subroutine sub5(b)
integer, target:: b(:)
b(1) = 3
write(13,*)(/a(1),b(1)/)
end subroutine
subroutine sub6(b)
integer, target:: b
b = 3
write(14,*)(/a(2),b/)
end subroutine
end program p
subroutine chk11
rewind 11; read(11,*)i,j
if(any((/i,j/)/=3))print *,'error11' 
end
subroutine chk12
rewind 12; read(12,*)i,j
if(any((/i,j/)/=3))print *,'error12' 
end
subroutine chk13
rewind 13; read(13,*)i,j
if(any((/i,j/)/=3))print *,'error13' 
end
subroutine chk14
rewind 14; read(14,*)i,j
if(any((/i,j/)/=3))print *,'error14' 
end
subroutine err(i)
print *,'error',i
end
