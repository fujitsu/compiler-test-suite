           implicit none
           integer,target :: t1 = 5
           integer,target :: t2 = 15
          type ty1
             integer :: m1=10
             integer :: m2(2)=(/20,30/)
             integer,pointer :: p1 =>t1
          end type ty1
          type(ty1) :: str

         write(1,*) 101, str%m1, str%m2, str%p1

        !$omp parallel firstprivate(str)
         write(1,*) 2021, str%m1
         write(1,*) 2022, str%m2
         write(1,*) 2023, str%p1
         if (str%m1 /= 10) print *,2021
         if (any(str%m2 /= [20,30])) print *,2022
         if (str%p1 /= 5) print *,2023
          str%m1=1
          str%m2=[2,3]
          str%p1=> t2
         write(1,*) 203, str%m1, str%m2, str%p1
         if (str%m1 /= 1) print *,2031
         if (any(str%m2 /= [2,3])) print *,2032
         if (str%p1 /= 15) print *,2033
        !$omp end parallel
         write(1,*) 303, str%m1, str%m2, str%p1
         if (str%m1 /= 10) print *,3021
         if (any(str%m2 /= [20,30])) print *,3022
         if (str%p1 /= 5) print *,3023

print *,'pass'
       end 
