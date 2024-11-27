module mod

      type :: vt
         class(*), allocatable :: item
      end type vt

      type :: ty
         type(vt) :: elements(10)
      end type ty

      contains

end 

   use mod
   type (ty) :: values
   integer  loop

         allocate(values%elements(1)%item, source= 1)
         allocate(values%elements(2)%item, source= 1.1)
         allocate(values%elements(3)%item, source= 1.2)
         allocate(values%elements(4)%item, source= 2)

   do loop = 1, 4
      select type (v => values%elements(loop)%item)
      type is (integer)
           if (loop==2.or. loop==3) print *,'error',loop
           if (loop==1.and.v/=1) print *,8001
           if (loop==4.and.v/=2) print *,8002
      type is (real(kind=8))
           if (loop==1.or. loop==4) print *,'error-2',loop
           if (loop==2.and.abs(v-1.1)>0.001) print *,9001
           if (loop==3.and.abs(v-1.2)>0.001) print *,9002
           if (loop==4.and.v/=2) print *,8003
      end select
   end do

print *,'pass'
end 
