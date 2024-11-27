    Type Knot_Description
        Logical:: Treed
    End type Knot_Description
    Type (Knot_Description), pointer:: Instance

    Type KnotHeap
        Type (Knot_Description), pointer, dimension (:):: Knot
    End type KnotHeap
    Type (KnotHeap), pointer:: KnotHeapI

    logical foo
    I=1
    allocate(KnotHeapI)
    allocate(KnotHeapI%Knot(1))
    Instance=> KnotHeapI%Knot(I)
    foo=Associated (Instance, KnotHeapI % Knot (I))
    if (.not.foo)write(6,*) "NG"
    print *,'pass'
    End
