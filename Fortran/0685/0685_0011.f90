      implicit integer(a-z)
      common /zz/ x,y,z

      a=1 ; b=2 ; c=3
      x=-1 ; y=-2 ; z=-3
!$omp parallel firstprivate(a,b,c,x,y,z)
      a=a+10 ; b=b+10 ; c=c+10
      x=x-10 ; y=y-10 ; z=z-10
 !$omp parallelsections firstprivate(a,b,c,x,y,z),lastprivate(a,b,c,x,y,z)
      a=a+10 ; b=b+10 ; c=c+10
      x=x-10 ; y=y-10 ; z=z-10
 !$omp end parallelsections
      if (a/=21.or.b/=22.or.c/=23) print *,' 1-1 ',a,b,c
      if (x/=-21.or.y/=-22.or.z/=-23) print *,' 1-2 ',x,y,z
!$omp end parallel
      if (a/=1.or.b/=2.or.c/=3) print *,' 2-1 ',a,b,c
      if (x/=-1.or.y/=-2.or.z/=-3) print *,' 2-2 ',x,y,z

!$omp parallel firstprivate(a,b,c,x,y,z)
      a=a-7 ; b=b-7 ; c=c-7
      x=x+7 ; y=y+7 ; z=z+7
 !$omp parallelsections lastprivate(a,b,c,x,y,z)
      a=24 ; b=25 ; c=26
      x=-24 ; y=-25 ; z=-26
  !$omp parallel firstprivate(a,b,c,x,y,z)
      a=34 ; b=35 ; c=35
      x=-34 ; y=-35 ; z=-36
  !$omp end parallel
      if (a/=24.or.b/=25.or.c/=26) print *,' 3-1 ',a,b,c
      if (x/=-24.or.y/=-25.or.z/=-26) print *,' 3-2 ',x,y,z
 !$omp end parallelsections
      if (a/=24.or.b/=25.or.c/=26) print *,' 4-1 ',a,b,c
      if (x/=-24.or.y/=-25.or.z/=-26) print *,' 4-2 ',x,y,z
!$omp end parallel
      if (a/=1.or.b/=2.or.c/=3) print *,' 5-1 ',a,b,c
      if (x/=-1.or.y/=-2.or.z/=-3) print *,' 5-2 ',x,y,z

!$omp parallel firstprivate(a,b,c,x,y,z)
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
