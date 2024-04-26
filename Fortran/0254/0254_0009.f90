integer:: a(4,2)=reshape([1,2,6,4,5,6,5,6],[4,2])
    integer :: rf(2),rt(2),rx(2)
    logical:: m(4,2)=.true.
    logical:: n(4,2)=.false.
    logical::t=.true.,f=.false.
    m(3,1)=.false.
    n(3,1)=.true.
    n(2,2)=.true.

    rt= (/3,4/)
    rf= (/0,2/)
    rx= (/3,0/)
    if( any(findloc( a , 6 , 1 , .NOT.m ,  4,        t).ne. rx)) print*,101
    if( any(findloc( a , 6 , 1 , m.AND.n ,  4,        f).ne. rf)) print*,102
    if( any(findloc( a , 6 , 1 , .NOT.m.AND.n ,  4,   .not.t).ne. rx)) print*,103
    if( any(findloc( a , 6 , 1 , m.NEQV.n ,  4,   .not.f).ne. rt)) print*,104

    n(2,2)=.false.

    if( any(findloc( a , 6 , 1 , m.EQV..NOT.n ,  4,  t.or.f).ne. rt)) print*,105
    if( any(findloc( a , 6 , 1 , m.EQV..NOT.n ,  4,  .NOT.(t.or.f)).ne. [3,2])) print*,106
    print*,"pass"
end

