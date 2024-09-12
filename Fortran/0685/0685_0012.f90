      implicit integer(a-z)
      common /zz/ x,y,z

      a=-101 ; b=-102 ; c=-103
      x=-201 ; y=-202 ; z=-203
!$omp parallel private(/zz/,a,b,c)
  !$omp parallel default(private)

        a=1 ; b=2 ; c=3
        x=-1 ; y=-2 ; z=-3
    !$omp parallel private(a,b,c,/zz/)
          a=11 ; b=12 ; c=13
          x=-11 ; y=-12 ; z=-13
      !$omp parallel private(a,b,c,/zz/)
            a=21 ; b=22 ; c=23
            x=-21 ; y=-22 ; z=-23
      !$omp end parallel
          if (a/=11.or.b/=12.or.c/=13)    print *,' 1-1 ',a,b,c
          if (x/=-11.or.y/=-12.or.z/=-13) print *,' 1-2 ',x,y,z
    !$omp end parallel
        if (a/=1.or.b/=2.or.c/=3)    print *,' 2-1 ',a,b,c
        if (x/=-1.or.y/=-2.or.z/=-3) print *,' 2-2 ',x,y,z

    !$omp parallel private(a,b,c,x,y,z)
          a=14 ; b=15 ; c=16
          x=-14 ; y=-15 ; z=-16
      !$omp parallel firstprivate(a,b,c,x,y,z)
            if (a/=14.or.b/=15.or.c/=16)    print *,' 3-0 ',a,b,c
            if (x/=-14.or.y/=-15.or.z/=-16) print *,' 3-0 ',x,y,z
            a=24 ; b=25 ; c=26
            x=-24 ; y=-25 ; z=-26
        !$omp parallel firstprivate(a,b,c,/zz/)
              if (a/=24.or.b/=25.or.c/=26)    print *,' 4-0 ',a,b,c
              if (x/=-24.or.y/=-25.or.z/=-26) print *,' 4-0 ',x,y,z
              a=34 ; b=35 ; c=35
              x=-34 ; y=-35 ; z=-36
        !$omp end parallel
            if (a/=24.or.b/=25.or.c/=26)    print *,' 3-1 ',a,b,c
            if (x/=-24.or.y/=-25.or.z/=-26) print *,' 3-2 ',x,y,z
      !$omp end parallel
          if (a/=14.or.b/=15.or.c/=16)    print *,' 2-3 ',a,b,c
          if (x/=-14.or.y/=-15.or.z/=-16) print *,' 2-4 ',x,y,z
    !$omp end parallel
        if (a/=1.or.b/=2.or.c/=3)    print *,' 1-3 ',a,b,c
        if (x/=-1.or.y/=-2.or.z/=-3) print *,' 1-4 ',x,y,z

    !$omp parallel private(a,b,c,/zz/)
          a=17 ; b=18 ; c=19
          x=-17 ; y=-18 ; z=-19
      !$omp parallel private(a,b,c,/zz/)
            a=27 ; b=28 ; c=29
            x=-27 ; y=-28 ; z=-29
      !$omp end parallel
          if (a/=17.or.b/=18.or.c/=19)    print *,' 2-5 ',a,b,c
          if (x/=-17.or.y/=-18.or.z/=-19) print *,' 2-6 ',x,y,z
    !$omp end parallel
        if (a/=1.or.b/=2.or.c/=3)    print *,' 1-5 ',a,b,c
        if (x/=-1.or.y/=-2.or.z/=-3) print *,' 1-6 ',x,y,z

  !$omp end parallel
!$omp end parallel
      if (a/=-101.or.b/=-102.or.c/=-103) print *,' 0-1 ',a,b,c
      if (x/=-201.or.y/=-202.or.z/=-203) print *,' 0-2 ',x,y,z

    print *,'pass'
    end
