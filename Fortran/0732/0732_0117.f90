    subroutine sub
    Type Knot_Description
        Logical:: Treed
    End type Knot_Description
    Type (Knot_Description), pointer:: Instance
    Type (Knot_Description), pointer:: tmp

    Type KnotHeap
        Type (Knot_Description), pointer, dimension (:):: Knot
    End type KnotHeap
    Type (KnotHeap), pointer:: KnotHeapI

    logical foo
    tmp => KnotHeapI % Knot (I)
    foo=Associated (Instance, tmp )
    End
    print *,'pass'
    end
