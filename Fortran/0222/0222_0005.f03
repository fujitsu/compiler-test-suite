                       module m1
                             type x
                               integer ::x1
                             end type
                            type xx
                              class(x),allocatable :: cmp_xx
                            end type
                             contains
                               function f() result(r)
                               type(x)::r
                               r%x1 = 1
                              end function
                          end
                         use m1
                         type(xx),allocatable::a
                         allocate(a)
                          a%cmp_xx=f()
                         if (a%cmp_xx%x1/=1) print *,200
                         print *,'pass'
                         end

