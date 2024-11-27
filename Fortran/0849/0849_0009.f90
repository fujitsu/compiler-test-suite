        subroutine s1
        type ty
         character(:),allocatable :: ch
        end type
        type(ty),target :: obj
        class(*),pointer :: cptr
        allocate(obj%ch,source='123')
         cptr=>obj%ch 
        k=0
        select type(cptr)
        typeis(character(*))
          if (cptr/='123') print *,1001,'#'//cptr//'#'
          k=1
        end select
        if (k/=1) print *,2020
        end
        call s1
        print *,'pass'
        end
