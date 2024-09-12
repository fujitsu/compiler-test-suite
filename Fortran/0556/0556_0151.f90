program main
TYPE base
 integer::i
END TYPE

TYPE, EXTENDS(base) :: deriv
 real::r
END TYPE

TYPE(deriv), ALLOCATABLE::p(:)
CLASS(base),ALLOCATABLE::n(:)

 ALLOCATE(p(1))
 ALLOCATE(n(3))

 CALL MOVE_ALLOC(TO = n,FROM = p)

print*,'pass'
end
