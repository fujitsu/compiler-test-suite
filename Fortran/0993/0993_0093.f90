  program main
    print *,1.0e-46
    print *,-1.0e-46
    print *,1.0e-46_4
    print *,-1.0e-46_4

    print *,1.0d-325
    print *,+1.0d-325
    print *,1.0e-325_8
    print *,+1.0e-325_8

    print *,1.0q-4967
    print *,+1.0q-4967
    print *,1.0e-4967_16
    print *,+1.0e-4967_16

    print *,(1.0e-46,0)
    print *,(-1.0e-46,0)
    print *,(1.0e-46_4,0)
    print *,(-1.0e-46_4,0)
    print *,(0,1.0e-46)
    print *,(0,-1.0e-46)
    print *,(0,1.0e-46_4)
    print *,(0,-1.0e-46_4)

    print *,(1.0d-325,0)
    print *,(-1.0d-325,0)
    print *,(1.0e-325_8,0)
    print *,(-1.0e-325_8,0)
    print *,(0,1.0d-325)
    print *,(0,-1.0d-325)
    print *,(0,1.0e-325_8)
    print *,(0,-1.0e-325_8)

    print *,(1.0q-4967,0)
    print *,(-1.0q-4967,0)
    print *,(1.0e-4967_16,0)
    print *,(-1.0e-4967_16,0)
    print *,(0,1.0q-4967)
    print *,(0,-1.0q-4967)
    print *,(0,1.0e-4967_16)
    print *,(0,-1.0e-4967_16)

  end program main
