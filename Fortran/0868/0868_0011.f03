module mod
type ty
  integer::x1
end type
      contains
        function f(i) result(r)
        class(*),pointer::r
        select case(i)
         case(1)
         allocate(r, source= 1)
         case(2)
         allocate(r, source= 3.1)
         case(3)
         allocate(r, source= ty(1))
         end select
        end
end 

   use mod
   integer  loop


   do loop = 1, 2
      select type (v => f(loop))
      type is (ty     )
           if (loop/=3) print *,'error3',loop
           if (loop==3.and.v%x1/=1) print *,7001
      type is (real(kind=8))
           if (loop/=2) print *,'error-2',loop
           if (loop==2.and.abs(v-3.1)>0.001) print *,9001
      type is (integer)
           if (loop/=1) print *,'error',loop
           if (loop==1.and.v/=1) print *,8001
      end select
   end do

print *,'pass'
end 
