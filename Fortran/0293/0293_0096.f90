subroutine s1(q)
character(3) x
character(5) w(2)
character(*)::q(:,:)
type yy
  integer::y1
end type
type(yy)::z
end
interface
subroutine s1(q)
character(*)::q(:,:)
end subroutine
end interface
character(2)::q(7,9)
q(2,3)='x'
q(4,3)='x'
q(2,5)='x'
q(4,5)='x'
q(2,7)='x'
call s1(q(2:5:2,3:7:2))
print *,'pass'
end
