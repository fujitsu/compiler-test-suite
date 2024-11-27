 module m1
  contains
    subroutine chks(p1,p2,p3,p4)
    character*(1),pointer,dimension(:)::p1,p2,p3,p4
    character*(1),pointer,dimension(:)::a1,a2,a3,a4
101 allocate(p1(-5:-1))
    p1='1'
102 allocate(a1(-5:-1))
    a1=p1
    deallocate(p1)
    deallocate(a1)
111 allocate(p1(-5:-1),p2(-5:-1),p3(-5:-1),p4(-5:-1))
    p1='1';p2=p1;p3=p2;p4=p3
112 allocate(a1(-5:-1),a2(-5:-1),a3(-5:-1),a4(-5:-1))
    a1=p1;a2=p2;a3=p3;a4=p4
    deallocate(p1,p2,p3,p4)
    deallocate(a1,a2,a3,a4)
121 allocate(p1(-5:-1),a1(-5:-1),p2(-5:-1),a2(-5:-1),p3(-5:-1),a3(-5:-1),p4(-5:-1),a4(-5:-1))
    p1='1';p2=p1;p3=p2;p4=p3
122 continue
    a1=p1;a2=p2;a3=p3;a4=p4
    deallocate(p1,a1,p2,a2,p3,a3,p4,a4)
    end subroutine
end
  use m1
    character*(1),pointer,dimension(:)::p1,p2,p3,p4
  call    chks(p1,p2,p3,p4) 
print *,'pass'
end
