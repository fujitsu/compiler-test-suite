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

equal_c = .false.
           select type (coords_a=>a%coordinate_data)
            type is (integer(INT8 ))
              select type (coords_b=>b%coordinate_data)
               type is (integer(INT16))
                 equal_c = all(coords_a == coords_b)
              end select
            type is (integer(INT16))
              select type (coords_b=>b%coordinate_data)
               type is (integer(INT64))
                 equal_c = all(coords_a == coords_b)
              end select
           end select
!        endif
end
end

subroutine test01()
use m1
class (CoordinateVariable),pointer :: aa
type (CoordinateVariable) :: bb
allocate(aa)
aa%Variable=1
bb%Variable=1
allocate(aa%coordinate_data(1) ,source=int(1,1))
allocate(bb%coordinate_data(1) ,source=int(1,2))
if (equal_c(aa,bb) .eqv..false.) print *,'err' 
end
call test01()
call test02()
print *,'pass'
end

subroutine test02()
use m1
class (CoordinateVariable),pointer :: aa
type (CoordinateVariable) :: bb
allocate(aa)
aa%Variable=1
bb%Variable=1
allocate(aa%coordinate_data(1) ,source=int(1,2))
allocate(bb%coordinate_data(1) ,source=int(1,8))
if (equal_c(aa,bb) .eqv..false.) print *,'err' 
end

