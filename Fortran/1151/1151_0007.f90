module m1
 type CoordinateVariable
   integer::Variable
   class(*),allocatable:: coordinate_data(:)
 end type
  contains
logical function equal_c(a, b)
   class (CoordinateVariable), target, intent(in) :: a
   type (CoordinateVariable), target, intent(in) :: b

      select type (coords_a=>a%coordinate_data)
       type is (integer(4    ))
         select type (coords_b=>b%coordinate_data)
          type is (integer(4    ))
            equal_c = all(coords_a == coords_b)
         end select
       type is (integer(8    ))
         select type (coords_b=>b%coordinate_data)
          type is (integer(8    ))
            equal_c = all(coords_a == coords_b)
         end select
      end select
end function
end
use m1
print *,'pass'
end


