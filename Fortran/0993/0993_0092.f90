  program main
    print *,1.0e+39
    print *,-1.0e+39
    print *,1.0e+39_4
    print *,-1.0e+39_4

    print *,1.0d+309
    print *,+1.0d+309
    print *,1.0e+309_8
    print *,+1.0e+309_8

    print *,1.0q+4933
    print *,+1.0q+4933
    print *,1.0e+4933_16
    print *,+1.0e+4933_16

    print *,(1.0e+39,0)
    print *,(-1.0e+39,0)
    print *,(1.0e+39_4,0)
    print *,(-1.0e+39_4,0)
    print *,(0,1.0e+39)
    print *,(0,-1.0e+39)
    print *,(0,1.0e+39_4)
    print *,(0,-1.0e+39_4)

    print *,(1.0d+309,0)
    print *,(-1.0d+309,0)
    print *,(1.0e+309_8,0)
    print *,(-1.0e+309_8,0)
    print *,(0,1.0d+309)
    print *,(0,-1.0d+309)
    print *,(0,1.0e+309_8)
    print *,(0,-1.0e+309_8)

    print *,(1.0q+4933,0)
    print *,(-1.0q+4933,0)
    print *,(1.0e+4933_16,0)
    print *,(-1.0e+4933_16,0)
    print *,(0,1.0q+4933)
    print *,(0,-1.0q+4933)
    print *,(0,1.0e+4933_16)
    print *,(0,-1.0e+4933_16)

  end program main
