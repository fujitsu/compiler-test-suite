        module m1
        contains
        subroutine s1
        type ty
         character(:),allocatable :: ch(:)
        end type
        type(ty),target :: obj
        type tt
         class(*),pointer :: cptr(:)
        end type
        type (tt)::z
        allocate(obj%ch(2),source='123')
         z%cptr=>obj%ch 
        call chk(z%cptr,'123')
        end
        subroutine chk(p,c)
        class(*)::p(:)
        character(*)::c
        k=0
        if (size(p)/=2) print *,901
        select type(p)
        typeis(character(*))
          if (any(p/=c)) print *,1001
          k=1
        end select
        if (k/=1) print *,2020
        end
        end
        use m1
        call s1
        print *,'pass'
        end
