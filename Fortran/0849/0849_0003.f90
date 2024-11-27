        module m1
        contains
        subroutine s1
        type ty
         character(:),allocatable :: ch
        end type
        type(ty),target :: obj
        class(*),pointer :: cptr
        allocate(obj%ch,source='123')
         cptr=>obj%ch 
        call chk(cptr,'123')
        end
        subroutine chk(p,c)
        class(*)::p
        character(*)::c
        k=0
        select type(p)
        typeis(character(*))
          if (p/=c) print *,1001
          k=1
        end select
        if (k/=1) print *,2020
        end
        end
        use m1
        call s1
        print *,'pass'
        end
