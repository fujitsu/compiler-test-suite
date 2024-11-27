                           module mod01
                             procedure(f), pointer :: pp
                            contains
                             function f() result(r)
                               class(* ), pointer     :: r
                               allocate(real   ::r)
                              end function
                             subroutine ms()
                             select type(asc=>pp())
                              type is(integer)
                                print*,"NG"
                              class default
                                print*,"pass"
                             end select
                            end
                           end module
                          use mod01
                           pp=>f
                           call ms()
                           end
