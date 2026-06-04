module m1
 type CoordinateVariable
   integer::Variable
   class(*),allocatable:: coordinate_data(:)
 end type
  contains
logical function equal_c(a, b)
   class (CoordinateVariable), target, intent(in) :: a
   type (CoordinateVariable), target, intent(in) :: b
   integer::type_kind

   type_kind=0
      select type (coords_a=>a%coordinate_data)
       type is (integer(4    ))
         type_kind=1
      end select

      select type (coords_b=>b%coordinate_data)
        type is (integer(4    ))
           if (type_kind == 1) then
            equal_c = all(coords_a == coords_b)
           endif
      end select
end function
end
use m1
print *,'sngg603j : pass'
end


