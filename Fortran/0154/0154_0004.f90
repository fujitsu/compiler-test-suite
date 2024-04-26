subroutine s1
character a(100)
do k=1,100
  a(k)=char(k)
end do
  call s(size(a)-8,a(3),a(7))
contains
subroutine s(n, a1,a2)
character,target:: a1(1),a2(1)
do m=1,n
 a2(m)=a1(m)
end do
end subroutine
end
call s1
call s2
print *,'pass'
end
subroutine s2
character a(100)
interface
subroutine t(n, a1,a2)
character,target:: a1(1),a2(1)
end subroutine
end interface
do k=1,100
  a(k)=char(k)
end do
  call t(size(a)-8,a(3),a(7))
end
subroutine t(n, a1,a2)
character,target:: a1(1),a2(1)
do m=1,n
 a2(m)=a1(m)
end do
end
