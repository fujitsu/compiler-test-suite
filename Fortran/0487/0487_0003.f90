 module m1
         type ty
         integer,allocatable :: alc
         contains
         final :: f1
         end type

         type(ty),pointer :: mptr
         type(ty),target :: mtrg
        type(ty),target :: trg
        contains
        subroutine f1(d1)
        type(ty) :: d1
              write(1,*)2
        end
        end
        use m1
        type(ty),pointer :: ptr1,ptr2
        type(ty) :: obj
        allocate(obj%alc)
        obj%alc = 4

        allocate(trg%alc)
        trg%alc = 5

        ptr1 => trg
        ptr2 => trg

        ptr1 = obj
        rewind 1
        read(1,*) k1
if (k1/=2) print *,101
    print *,'pass'
       32 contains
       33 function ifun()
       34 type(ty),pointer :: ifun
       35 allocate(mtrg%alc)
       36 ifun => mtrg
       37 mptr => mtrg
       38 end
       39 end
