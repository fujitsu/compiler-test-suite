      implicit integer(a-z)
      common /zz/ x,y,z

      a=1 ; b=2 ; c=3
      x=-1 ; y=-2 ; z=-3
!$omp parallel private(a,b,c,/zz/)
      a=11 ; b=12 ; c=13
      x=-11 ; y=-12 ; z=-13
!$omp parallel firstprivate(a,b,c,x,y,z)
      a=21 ; b=22 ; c=23
      x=-21 ; y=-22 ; z=-23
!$omp end parallel
      if (a/=11.or.b/=12.or.c/=13) print *,' 1-1 ',a,b,c
      if (x/=-11.or.y/=-12.or.z/=-13) print *,' 1-2 ',x,y,z
!$omp end parallel
      if (a/=1.or.b/=2.or.c/=3) print *,' 2-1 ',a,b,c
      if (x/=-1.or.y/=-2.or.z/=-3) print *,' 2-2 ',x,y,z

!$omp parallel private(a,b,c,x,y,z)
      a=14 ; b=15 ; c=16
      x=-14 ; y=-15 ; z=-16
!$omp parallel firstprivate(a,b,c,/zz/)
      a=24 ; b=25 ; c=26
      x=-24 ; y=-25 ; z=-26
!$omp parallelsections lastprivate(a,b,c,/zz/)
      a=34 ; b=35 ; c=36
      x=-34 ; y=-35 ; z=-36
!$omp end parallelsections
      if (a/=34.or.b/=35.or.c/=36) print *,' 3-1 ',a,b,c
      if (x/=-34.or.y/=-35.or.z/=-36) print *,' 3-2 ',x,y,z
!$omp end parallel
      if (a/=14.or.b/=15.or.c/=16) print *,' 4-1 ',a,b,c
      if (x/=-14.or.y/=-15.or.z/=-16) print *,' 4-2 ',x,y,z
!$omp end parallel
      if (a/=1.or.b/=2.or.c/=3) print *,' 5-1 ',a,b,c
      if (x/=-1.or.y/=-2.or.z/=-3) print *,' 5-2 ',x,y,z

!$omp parallel private(a,b,c,/zz/)
      a=17 ; b=18 ; c=19
      x=-17 ; y=-18 ; z=-19
!$omp parallelsections lastprivate(a,b,c,x,y,z)
      a=27 ; b=28 ; c=29
      x=-27 ; y=-28 ; z=-29
!$omp end parallelsections
      if (a/=27.or.b/=28.or.c/=29) print *,' 6-1 ',a,b,c
      if (x/=-27.or.y/=-28.or.z/=-29) print *,' 6-2 ',x,y,z
!$omp end parallel
      if (a/=1.or.b/=2.or.c/=3) print *,' 7-1 ',a,b,c
      if (x/=-1.or.y/=-2.or.z/=-3) print *,' 7-2 ',x,y,z
    print *,'pass'
    end
