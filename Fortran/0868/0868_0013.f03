module mod

      contains
        function f(i) result(r)
        class(*),pointer::r
        select case(i)
         case(1)
         allocate(r, source= 'a')
         case(2)
         allocate(r, source=3.1_8 )
         end select
        end
end 

   use mod
   integer  loop


   do loop = 1, 2
      select type (v => f(loop))
      type is (real(kind=8))
           if (loop==1) print *,'error-2',loop
           if (loop==2.and.abs(v-3.1)>0.001) print *,9001
      type is (character(*))
           if (loop==2) print *,'error',loop
           if (loop==1.and.v/='a') print *,8001,len(v),'#'//v//'#'
      class default
            print *,7001
      end select
   end do

print *,'pass'
end 