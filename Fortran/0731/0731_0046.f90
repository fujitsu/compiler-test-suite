 module m1
  contains
    subroutine chks(p1,p2,p3,p4)
    character*(1),optional,pointer::p1,p2,p3,p4
    character*(1),pointer::a1,a2,a3,a4
    if (present(p2))goto 111
101 allocate(p1)
    p1='1'
102 allocate(a1)
    a1=p1
    deallocate(p1)
    deallocate(a1)
    return
111 continue
    p1='1';p2=p1;p3=p2;p4=p3
112 allocate(a1,a2,a3,a4)
    a1=p1;a2=p2;a3=p3;a4=p4
    deallocate(p1,p2,p3,p4)
    deallocate(a1,a2,a3,a4)
121 allocate(p1,a1,p2,a2,p3,a3,p4,a4)
    p1='1';p2=p1;p3=p2;p4=p3
122 continue
    a1=p1;a2=p2;a3=p3;a4=p4
    deallocate(p1,a1,p2,a2,p3,a3,p4,a4)
    end subroutine
    subroutine chky(p1,p2,p3,p4)
    character*(1),optional,pointer::p1,p2,p3,p4
    character*(1),pointer::a1,a2,a3,a4
121 allocate(a1,a2,a3,a4,p4)
    p1='1';p2=p1;p3=p2;p4=p3
122 continue
    a1=p1;a2=p2;a3=p3;a4=p4
    deallocate(p1,a1,p2,a2,p3,a3,p4,a4)
    end subroutine
end
    character*(1),pointer::p1,p2,p3,p4
call ss(p1,p2,p3,p4)
print *,'pass'
contains
 subroutine ss(p1,p2,p3,p4)
  use m1
    character*(1),pointer::p1,p2,p3,p4
    allocate(p1)
  call    chks(p1) 
  if (associated(p1))write(6,*) "NG"
    allocate(p1,p2,p3,p4)
    call       chks(p1,p2,p3,p4)
  if (associated(p1))write(6,*) "NG"
  if (associated(p2))write(6,*) "NG"
  if (associated(p3))write(6,*) "NG"
  if (associated(p4))write(6,*) "NG"
    allocate(p1,p2,p3)
    call       chky(p1,p2,p3,p4)
  if (associated(p1))write(6,*) "NG"
  if (associated(p2))write(6,*) "NG"
  if (associated(p3))write(6,*) "NG"
  if (associated(p4))write(6,*) "NG"
end subroutine
end
