                  type ty
                  integer :: ii
                  end type

                 type,extends(ty) :: tty
                  integer :: jj
                 end type

                 call s1(2_8)
                 call s1(2)
rewind 16
read(16,*) n ;if(n/=121) print *,201
read(16,*,end=1) n
stop 1
1 print*,"pass"

                contains
                subroutine s1(d1)
                class(*):: d1
                select type(d1)
                type is(ty)
                 print*,d1%ii
                type is(integer(8))
                 if (d1/=2) print *,101
                class default
                 write(16,*)"121"
                end select
               end subroutine
              end
