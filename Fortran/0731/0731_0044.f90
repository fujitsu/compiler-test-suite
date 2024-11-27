 module m1
  contains
    subroutine chks(p1,p2,p3,p4)
    character*(1),pointer::p1,p2,p3,p4
    character*(1),pointer::a1,a2,a3,a4
101 allocate(p1)
    p1='1'
102 allocate(a1)
    a1=p1
    deallocate(p1)
    deallocate(a1)
111 allocate(p1,p2,p3,p4)
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
end
  use m1
    character*(1),pointer::p1,p2,p3,p4
  call    chks(p1,p2,p3,p4) 
print *,'pass'
end
