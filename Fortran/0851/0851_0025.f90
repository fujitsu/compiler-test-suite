                          module class_mod
                           implicit none
                            type, public :: typeA
                            contains
                              procedure :: foo => typeA_foo
                              procedure :: ffoo => ftypeA_foo
                              generic::gnr=>foo
                            end type
                            interface gnr
                              procedure typeA_foo
                           end interface
                         contains
                           subroutine typeA_foo( this, array )
                             class(typeA), intent(in) :: this
                             integer :: array(:)
                          end subroutine typeA_foo
                           function  ftypeA_foo( this, array )
                             class(typeA), intent(in) :: this
                             integer :: array(*)
                             integer :: ftypeA_foo
ftypeA_foo =1
                          end function ftypeA_foo
                        end module class_mod
                        program main
                          use class_mod
                          implicit none
                          type(typeA) :: type_a
                          integer :: array(2,3),call,aaa(6)
                          aaa=1
                          aaa=aaa
                          array(:,:) = 1
                          call typeA_foo(type_a,aaa  )
                          call type_a%foo(aaa  )
                          call= type_a%ffoo(array)
if (call .ne.1 ) print *,'NG'
                          print *,'pass'
                          end program main
