module mod

      contains
        function f(i) result(r)
        class(*),pointer::r
        select case(i)
         case(1)
         allocate(r, source= 1)
         case(2)
         allocate(r, source= 1.1)
         case(3)
         allocate(r, source= 1.2)
         case(4)
         allocate(r, source= 2)
         end select
        end
end 

   use mod
   integer  loop


   do loop = 1, 4
      select type (v => f(loop))
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
