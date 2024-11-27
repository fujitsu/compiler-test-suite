                           module mod01
                            type ty
                               procedure(f), pointer, nopass :: pp
                            end type
                            procedure(f), pointer  :: pp2
                            contains
                             function f() result(r)
                               class(* ), pointer     :: r
                               allocate(real   ::r)
 k=0
                             select type(asc=>r)
                              type is(integer)
                                  asc=2
k=1
                              class default
k=2
                             end select
if (k/=2) print *,91
                             end function
                             subroutine ms(obj)
                             type(ty)::obj
 k=0
                             select type(asc=>obj%pp())
                              type is(integer)
                                if(asc.ne. 2) print*,"111"
k=1
                              class default
k=2
                             end select
if (k/=2) print *,91
 k=0
                              select type(asc=>pp2())
                              type is(integer)
                                if(asc.ne. 2) print*,"112"
k=1
                              class default
k=2
                             end select
if (k/=2) print *,21
                            end
                           end module
                          use mod01
                          type(ty)::obj
                          obj%pp=>f
                           pp2=>f
                          call ms(obj)
                          print*,"pass"
                          end
