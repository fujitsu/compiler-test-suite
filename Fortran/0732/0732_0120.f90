    Type Knot_Description
        Logical:: Treed
    End type Knot_Description
    Type (Knot_Description), pointer:: Instance

        Type (Knot_Description), pointer, dimension (:):: Knot

    logical foo
    I=1
    allocate(Knot(1))
    Instance=> Knot(I)
    foo=Associated (Instance, Knot (I))
    if (.not.foo)write(6,*) "NG"
    print *,'pass'
    End
