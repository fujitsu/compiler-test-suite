        module m1
        contains
        subroutine s1
        type ty
         integer::x
         character(:),pointer     :: ch1
         character(:),pointer     :: ch2(:)
         character(:),pointer     :: ch3
         character(:),pointer     :: ch4(:)
        end type
        type(ty),target :: obj
        class(*),pointer :: cptr
        class(*),pointer :: cptra(:)
        allocate(obj%ch1,source='123')
         cptr=>obj%ch1 
        call chk(cptr,'123')
        allocate(obj%ch3,source='456')
         cptr=>obj%ch3 
        call chk(cptr,'456')
        allocate(obj%ch2,source=['123','123'])
         cptra=>obj%ch2 
        call chk2(cptra,'123')
        allocate(obj%ch4,source=['456','456'])
         cptra=>obj%ch4 
        call chk2(cptra,'456')
        end
        subroutine chk(p,c)
        class(*)::p
        character(*)::c
        k=0
        select type(p)
        typeis(character(*))
          if (p/=c) print *,1001,'%'//p//'%'
          k=1
        end select
        if (k/=1) print *,2020
        end
        subroutine chk2(p,c)
        class(*)::p(:)
        character(*)::c
        k=0
        select type(p)
        typeis(character(*))
          if (any(p/=c))print *,1001,'%'//p//'%'
          k=1
        end select
        if (k/=1) print *,2020
        end
        end
        use m1
        call s1
        print *,'pass'
        end

