           implicit none
           integer,target :: t1 = 5
           integer,target :: t2 = 15
          type ty1
             integer :: m1=10
             integer :: m2(2)=(/20,30/)
             integer,pointer :: p1 =>t1
          end type ty1
          type(ty1) :: str
call omp_set_num_threads(2)

         write(4, *)101, str%m1, str%m2, str%p1

        !$omp parallel private(str)
         write(4, *),102, str%m1, str%m2, str%p1
          str%m1=1
          str%m2=[2,3]
          str%p1=> t2
         write(4, *),203, str%m1, str%m2, str%p1
        !$omp end parallel
         write(4, *),303, str%m1, str%m2, str%p1

call chk
print    *,'pass'
       end
subroutine chk
rewind 4
do
read(4,*,end=2) k1,k2,k3,k4,k5
select case(k1)
case (101,102,303)
  if (any([k2,k3,k4,k5]/= [ 10, 20, 30, 5])) print *,601
case (203)
  if (any([k2,k3,k4,k5]/= [1,2,3,15 ])) print *,602
end select
end do
2 return
end
