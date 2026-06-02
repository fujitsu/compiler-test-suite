module m1
 use iso_fortran_env
 type CoordinateVariable
   integer::Variable
   class(*),allocatable:: coordinate_data(:)
 end type
  contains
integer function equal_c(a, b,c)
        class (CoordinateVariable), target, intent(in) :: a
        type (CoordinateVariable), target, intent(in) :: b
        type (CoordinateVariable), target, intent(in),optional :: c

equal_c = 0
           select type (coords_a=>a%coordinate_data)
            type is (integer(INT8 ))
              select type (coords_b=>b%coordinate_data)
               type is (integer(INT16))
                 equal_c = coords_a(1) / coords_b(1)
              end select
if (PRESENT(c)) then
              select type (coords_b=>c%coordinate_data)
               type is (integer(INT32))
                 equal_c = equal_c+10
              end select
endif
            type is (integer(INT16))
              select type (coords_b=>b%coordinate_data)
               type is (integer(INT64))
                 equal_c = coords_a(1) + coords_b(1)
if (PRESENT(c)) then
                 select type (coords_b=>c%coordinate_data)
                 type is (integer(INT8 ))
                      equal_c = equal_c+100
                 end select
           select type (coords_a=>a%coordinate_data)
            type is (integer(INT16))
                      equal_c = equal_c+1000
           end select
endif
              end select
           end select
!        endif
end
end

subroutine test01()
use m1
class (CoordinateVariable),pointer :: aa
type (CoordinateVariable) :: bb
type (CoordinateVariable) :: cc
allocate(aa)
aa%Variable=1
bb%Variable=1
cc%Variable=1
allocate(aa%coordinate_data(1) ,source=int(1,1))
allocate(bb%coordinate_data(1) ,source=int(1,2))
allocate(cc%coordinate_data(1) ,source=int(1,4))
if (equal_c(aa,bb) .ne.1) print *,'err' 
if (equal_c(aa,bb,cc) .ne.11) print *,'err' 
end
call test01()
call test02()
print *,'pass'
end

subroutine test02()
use m1
class (CoordinateVariable),pointer :: aa
type (CoordinateVariable) :: bb
type (CoordinateVariable) :: cc
allocate(aa)
aa%Variable=1
bb%Variable=1
cc%Variable=1
allocate(aa%coordinate_data(1) ,source=int(1,2))
allocate(bb%coordinate_data(1) ,source=int(1,8))
allocate(cc%coordinate_data(1) ,source=int(1,1))
if (equal_c(aa,bb,cc) .ne.1102) print *,'err' 
if (equal_c(aa,bb) .ne.2) print *,'err' 
end

