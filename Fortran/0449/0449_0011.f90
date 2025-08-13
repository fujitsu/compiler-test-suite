    module m1
         type ty
         integer,allocatable :: alc
         contains
         final :: f1
         end type
         contains
         subroutine f1(d1)
         type(ty) :: d1
        write(24,*) d1%alc
     end subroutine

        subroutine s1(d1)
        type(ty),intent(out) :: d1
        allocate(d1%alc)
       end subroutine
        end

       use m1
       type(ty) :: d1
       allocate(d1%alc)
       d1%alc = 20
       call s1(d1)
call chk
print *,'pass'
       end
subroutine chk
rewind 24
read(24,*) k
if (k/=20) print *,301
read(24,*,end=10) k
print *,302
10 return
end
