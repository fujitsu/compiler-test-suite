    module m1
         type ty
         integer,allocatable :: alc
         contains
         final :: f1
         end type
         contains
         subroutine f1(d1)
         type(ty) :: d1
        write(77,*) d1%alc
     end

        elemental impure subroutine s1(d1)
        type(ty),intent(out) :: d1
        allocate(d1%alc)
       end
        end

       use m1
       type(ty) :: d1(3)
       allocate(d1(1)%alc)
       allocate(d1(2)%alc)
       allocate(d1(3)%alc)
       d1(1)%alc = 20
       d1(2)%alc = 20
       d1(3)%alc = 20
       call s1(d1)
call chk
print *,'pass'
       end
subroutine chk
rewind 77
read(77,*) k
if (k/=20) print *,301
read(77,*) k
if (k/=20) print *,301
read(77,*) k
if (k/=20) print *,301
read(77,*,end=10) k
print *,302
10 return
end
