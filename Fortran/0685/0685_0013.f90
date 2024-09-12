      implicit integer(a-z)
      common /zz/ x,y,z

      call OMP_SET_NUM_THREADS(1)
      call OMP_SET_MAX_ACTIVE_LEVELS(.false.)

      a=1 ; b=2 ; c=3
      x=-1 ; y=-2 ; z=-3
!$omp parallel reduction(+:a,b,c,x,y,z)
      a=11 ; b=12 ; c=13
      x=-11 ; y=-12 ; z=-13
!$omp parallel reduction(+:a,b,c,x,y,z)
      a=21 ; b=22 ; c=23
      x=-21 ; y=-22 ; z=-23
!$omp end parallel
      if (a/=32.or.b/=34.or.c/=36) print *,' 1-1 ',a,b,c
      if (x/=-32.or.y/=-34.or.z/=-36) print *,' 1-2 ',x,y,z
!$omp end parallel
      if (a/=33.or.b/=36.or.c/=39) print *,' 2-1 ',a,b,c
      if (x/=-33.or.y/=-36.or.z/=-39) print *,' 2-2 ',x,y,z

      call OMP_SET_NUM_THREADS(1)
      call OMP_SET_MAX_ACTIVE_LEVELS(.false.)
!$omp parallel reduction(+:a,b,c,x,y,z)
      a=14 ; b=15 ; c=16
      x=-14 ; y=-15 ; z=-16
!$omp parallel reduction(+:a,b,c,x,y,z)
      a=24 ; b=25 ; c=26
      x=-24 ; y=-25 ; z=-26
!$omp parallel reduction(+:a,b,c,x,y,z)
      a=34 ; b=35 ; c=35
      x=-34 ; y=-35 ; z=-36
!$omp end parallel
      if (a/=58.or.b/=60.or.c/=61) print *,' 3-1 ',a,b,c
      if (x/=-58.or.y/=-60.or.z/=-62) print *,' 3-2 ',x,y,z
!$omp end parallel
      if (a/=72.or.b/=75.or.c/=77) print *,' 4-1 ',a,b,c
      if (x/=-72.or.y/=-75.or.z/=-78) print *,' 4-2 ',x,y,z
!$omp end parallel
      if (a/=105.or.b/=111.or.c/=116) print *,' 5-1 ',a,b,c
      if (x/=-105.or.y/=-111.or.z/=-117) print *,' 5-2 ',x,y,z

      call OMP_SET_NUM_THREADS(1)
      call OMP_SET_MAX_ACTIVE_LEVELS(.false.)
!$omp parallel reduction(+:a,b,c,x,y,z)
      a=17 ; b=18 ; c=19
      x=-17 ; y=-18 ; z=-19
!$omp parallel reduction(+:a,b,c,x,y,z)
      a=27 ; b=28 ; c=29
      x=-27 ; y=-28 ; z=-29
!$omp end parallel
      if (a/=44.or.b/=46.or.c/=48) print *,' 6-1 ',a,b,c
      if (x/=-44.or.y/=-46.or.z/=-48) print *,' 6-2 ',x,y,z
!$omp end parallel
      if (a/=149.or.b/=157.or.c/=164) print *,' 7-1 ',a,b,c
      if (x/=-149.or.y/=-157.or.z/=-165) print *,' 7-2 ',x,y,z
    print *,'pass'
    end
