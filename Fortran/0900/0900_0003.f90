                type ty1(i,j)
                  integer(4),kind :: i
                  integer(4),len  :: j
                  integer :: arr
                end type
                type ty2(ii)
                integer ,kind:: ii=1
                  type(ty1(1,1)) :: str2=ty1(1,1)(1)
                end type
             print*,"PASS"
               end

