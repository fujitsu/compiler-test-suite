 PARAMETER ( PI=3.14159 ) 
 SPHERE ( R ) = 4.0 * PI * (R**3) / 3.0 
 REAL::VOLUME
 class(*),allocatable::r1
 type ty
    class(*),allocatable::r1
 end type
 type(ty)::obj
 type(ty)::obj2
 allocate(obj%r1,source=11.0)
 allocate(obj2%r1,source=13.0)
 allocate(r1,source=10.0)
 select type(A=>r1)
   type is (integer)
       print*,"101"
   type is(real)
       VOLUME = SPHERE( A )
       if(abs(VOLUME-SPHERE(A))>0.1)print*,"191"
  end select 
  select type(A=>obj%r1)
   type is (integer)
       print*,"151"
   type is(real)
       VOLUME = SPHERE( A )
       !print *,102,VOLUME,   SPHERE(A)
       if(abs(VOLUME-   SPHERE(11.0))>0.1)print*,"102"
        select type(A=>obj2%r1)
          type is (integer)
            print*,"191"
          type is(real)
            VOLUME = SPHERE( A )
             !print *,103,VOLUME,   SPHERE(13.0)
             !print *,104,VOLUME,   SPHERE(A)
            if(abs(VOLUME-SPHERE(13.0))>0.1)print*,"103"
            if(abs(VOLUME-SPHERE(A))>0.1)print*,"153"
         end select 
   class default
       print*,"301"
  end select 
  print*,"PASS"
end
