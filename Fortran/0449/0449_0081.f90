    module m1
         type ty
         integer,allocatable :: alc
         contains
         final :: f1
         end type
         contains
         subroutine f1(d1)
         type(ty) :: d1(:)
        write(1,*) d1(1)%alc
        write(1,*) d1(2)%alc
        write(1,*) d1(3)%alc
     end subroutine

        subroutine s1(d1)
        type(ty),intent(out) :: d1(:)
        allocate(d1(1)%alc)
        allocate(d1(2)%alc)
        allocate(d1(3)%alc)
       end subroutine
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
rewind 1
read(1,*) k
if (k/=20) print *,301
read(1,*) k
if (k/=20) print *,301
read(1,*) k
if (k/=20) print *,301
read(1,*,end=10) k
print *,302
10 return
end 