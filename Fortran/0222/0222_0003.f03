            module m1
                   type x
                     integer,allocatable::x1
                   end type
                   type,extends(x)::xx
                     type(x):: xx1
                 end type
                  type xx2
                    type(xx),allocatable :: cmp_xx
                 end type
                  contains
                     function f() result(r)
                      type(xx)::r
                      allocate(r%x1,source=1)
                     end function
                 end
                 use m1
                type(xx2),allocatable::a
allocate(a)
                a%cmp_xx=f()
                 if (a%cmp_xx%x1/=1) print *,200
                print *,'pass'
              end
       

