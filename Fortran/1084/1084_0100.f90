                  module m1
                   use iso_fortran_env
                   type CoordinateVariable
                     integer::Variable
                     class(*),allocatable:: coordinate_data(:)
                   end type
                    contains
                  logical function equal_c(a, b)
                     class (CoordinateVariable), target, intent(in) ::a
                   type (CoordinateVariable), target, intent(in) :: b
       
                      select type (coords_a=>a%coordinate_data)
                       type is (integer(int32))
                         select type (coords_b=>b%coordinate_data)
                         type is (integer(int64))
                            equal_c = all(coords_a == coords_b)
                          !  print*,"INT32",equal_c
                         end select
                       type is (integer(int64))
                        select type (coords_b=>b%coordinate_data)
                          type is (integer(int64))
                            equal_c = all(coords_a == coords_b)
                          !  print*,"INT64",equal_c
                         end select
                      end select
                end
                end
       
               use m1
               logical ::re
               type(CoordinateVariable) :: act1,act2
               allocate(integer(int32) :: act1%coordinate_data(2))
               allocate(integer(int64) :: act2%coordinate_data(2))
               act1%coordinate_data =[1,2]
               act2%coordinate_data =[1_8,2_8]
               re=equal_c(act1,act2)
               if ( re .neqv. .true.)print*,"101"
       
               deallocate(act1%coordinate_data)
               deallocate(act2%coordinate_data)
       
               allocate(integer(int64) :: act1%coordinate_data(2))
               allocate(integer(int64) :: act2%coordinate_data(2))
               act1%coordinate_data =[1_8,2_8]
               act2%coordinate_data =[1_8,2_8]
               re=equal_c(act1,act2)
               if ( re .neqv. .true.)print*,"102"
       
               print*,"Pass"
               end
       

