    Type Knot_Description
        Logical:: Treed
    End type Knot_Description
    Type (Knot_Description), pointer,dimension (:):: Instance
    integer, pointer:: Instancey

    Type KnotHeap
        Type (Knot_Description), pointer, dimension (:):: Knot
        integer, pointer, dimension (:):: Knoy
    End type KnotHeap
    Type (KnotHeap), pointer:: KnotHeapI

    logical foo
    allocate(KnotHeapI)
    allocate(KnotHeapI%Knot(1))
    allocate(KnotHeapI%Knoy(1))
    Instance=> KnotHeapI%Knot
    foo=Associated (Instance, KnotHeapI % Knot )
    if (.not.foo)write(6,*) "NG"
    Instancey=> KnotHeapI%Knoy(1)
    foo=Associated (Instancey, KnotHeapI % Knoy(1) )
    if (.not.foo)write(6,*) "NG"
    print *,'pass'
    End
