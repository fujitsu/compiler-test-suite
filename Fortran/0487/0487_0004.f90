 module m1
         type ty
         integer :: alc
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
        type(ty),pointer :: ptr
        type(ty) :: obj
        obj%alc = 4

        trg%alc = 5

        ptr => trg

        ptr = obj
        rewind 1
        read(1,*) k1
if (k1/=2) print *,101
    print *,'pass'
        end
