module m1
 use iso_fortran_env
 type CoordinateVariable
   integer::Variable
   class(*),allocatable:: coordinate_data(:)
 end type
  contains
logical function equal_c(a, b)
        class (CoordinateVariable), target, intent(in) :: a
        type (CoordinateVariable), target, intent(in) :: b
   class(*),pointer:: a_tmp(:),b_tmp(:)
   a_tmp=>a%coordinate_data
   b_tmp=>b%coordinate_data

           select type (coords_a=>a_tmp)
            type is (integer(INT32))
              select type (coords_b=>b_tmp)
               type is (integer(INT32))
                 equal_c = all(coords_a == coords_b)
              end select
            type is (integer(INT64))
              select type (coords_b=>b%coordinate_data)
               type is (integer(INT64))
                 equal_c = all(coords_a == coords_b)
              end select
           end select
end
end
use m1
print *,'sngg604j : pass'
end


