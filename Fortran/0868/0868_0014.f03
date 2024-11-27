module mod

      contains
        function f(i) result(r)
        class(*),pointer::r
        select case(i)
         case(1)
         allocate(r, source= 1)
         case(2)
         allocate(r, source= 3.1)
         end select
        end
end 

   use mod
   integer  loop

k=1
   do loop = 1, 2
      select type (v => f(loop))
      type is (real(kind=8))
           if (loop==1) print *,'error-2',loop
           if (loop==2.and.abs(v-3.1)>0.001) print *,9001
      class default
           k=2
      end select
   end do
if (k/=2) print *,202
print *,'pass'
end 
