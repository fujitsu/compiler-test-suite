     module m1
       type d
         class (b),allocatable:: dd(:)
       end type
       type c
         class (d),allocatable:: cc(:)
       end type
       type  b
         integer(8)::d1
         class(c),allocatable:: b1(:)
         class (c),allocatable:: b2(:)
         class(c),allocatable:: b3(:)
         character(:),allocatable::x(:)
       end type
       contains
       subroutine s(d)
         class(b)::d(:)
!print *,100
         select type(z=>d(2))
           type is(b)
             z%d1=1
             allocate(z%b1(2))
             allocate(z%b1(2)%cc(2))
             allocate(z%b1(2)%cc(2)%dd(2))
             call ss(z%b1(2)%cc(2)%dd)
             allocate(z%b2(2))
             allocate(z%b2(2)%cc(2))
             allocate(z%b2(2)%cc(2)%dd(2))
             call ss(z%b2(2)%cc(2)%dd)
             allocate(z%b3(2))
             allocate(z%b3(2)%cc(2))
             allocate(z%b3(2)%cc(2)%dd(2))
             call ss(z%b3(2)%cc(2)%dd)
             allocate(z%x(2),source='12')
           class default
            print *,300
         end select
       end
    subroutine ss(d)
         class(b)::d(:)
         select type(z=>d(2))
           type is(b)
             z%d1=1
             allocate(z%b1(2))
             allocate(z%b1(2)%cc(2))
             allocate(z%b1(2)%cc(2)%dd(2))
             call sss(z%b1(2)%cc(2)%dd)
             allocate(z%b2(2))
             allocate(z%b2(2)%cc(2))
             allocate(z%b2(2)%cc(2)%dd(2))
             call sss(z%b2(2)%cc(2)%dd)
             allocate(z%b3(2))
             allocate(z%b3(2)%cc(2))
             allocate(z%b3(2)%cc(2)%dd(2))
             call sss(z%b3(2)%cc(2)%dd)
             allocate(z%x(2),source='12')
           class default
            print *,3001
         end select
    end
    subroutine sss(d)
         class(b)::d(:)
         select type(z=>d(2))
           type is(b)
             z%d1=1
             allocate(z%x(2),source='12')
           class default
            print *,30012
         end select
    end
     end
     
     subroutine s1
     use m1
     class(b),allocatable :: v1(:),v2(:)
     allocate(b::v1(2))
     call s(v1)
     allocate(v2,source=v1)
     select type(v2)
       type is (b)
         v2(2)%x(2) ='aa'
         v2(2)%b1(2)%cc(2)%dd(2)%d1=-1
         v2(2)%b1(2)%cc(2)%dd(2)%x(2) ='aa'
         v2(2)%b2(2)%cc(2)%dd(2)%d1=-1
         v2(2)%b2(2)%cc(2)%dd(2)%x(2) ='aa'
         v2(2)%b3(2)%cc(2)%dd(2)%d1=-1
         v2(2)%b3(2)%cc(2)%dd(2)%x(2) ='aa'
         v2(2)%b1(2)%cc(2)%dd(2)%b1(2)%cc(2)%dd(2)%d1=-1
         v2(2)%b1(2)%cc(2)%dd(2)%b1(2)%cc(2)%dd(2)%x(2) ='aa'
         v2(2)%b1(2)%cc(2)%dd(2)%b2(2)%cc(2)%dd(2)%d1=-1
         v2(2)%b1(2)%cc(2)%dd(2)%b2(2)%cc(2)%dd(2)%x(2) ='aa'
         v2(2)%b1(2)%cc(2)%dd(2)%b3(2)%cc(2)%dd(2)%d1=-1
         v2(2)%b1(2)%cc(2)%dd(2)%b3(2)%cc(2)%dd(2)%x(2) ='aa'
         v2(2)%b2(2)%cc(2)%dd(2)%b1(2)%cc(2)%dd(2)%d1=-1
         v2(2)%b2(2)%cc(2)%dd(2)%b1(2)%cc(2)%dd(2)%x(2) ='aa'
         v2(2)%b2(2)%cc(2)%dd(2)%b2(2)%cc(2)%dd(2)%d1=-1
         v2(2)%b2(2)%cc(2)%dd(2)%b2(2)%cc(2)%dd(2)%x(2) ='aa'
         v2(2)%b2(2)%cc(2)%dd(2)%b3(2)%cc(2)%dd(2)%d1=-1
         v2(2)%b2(2)%cc(2)%dd(2)%b3(2)%cc(2)%dd(2)%x(2) ='aa'
         v2(2)%b3(2)%cc(2)%dd(2)%b1(2)%cc(2)%dd(2)%d1=-1
         v2(2)%b3(2)%cc(2)%dd(2)%b1(2)%cc(2)%dd(2)%x(2) ='aa'
         v2(2)%b3(2)%cc(2)%dd(2)%b2(2)%cc(2)%dd(2)%d1=-1
         v2(2)%b3(2)%cc(2)%dd(2)%b2(2)%cc(2)%dd(2)%x(2) ='aa'
         v2(2)%b3(2)%cc(2)%dd(2)%b3(2)%cc(2)%dd(2)%d1=-1
         v2(2)%b3(2)%cc(2)%dd(2)%b3(2)%cc(2)%dd(2)%x(2) ='aa'
     end select
     select type(v1)
       type is (b)
         if (v1(2)%d1/=1) print *,1002
         if (v1(2)%x(2)/='12') print *,1001
         if (v1(2)%b1(2)%cc(2)%dd(2)%d1/=1) print *,10021
         if (v1(2)%b1(2)%cc(2)%dd(2)%x(2)/='12') print *,10011
         if (v1(2)%b1(2)%cc(2)%dd(2)%b1(2)%cc(2)%dd(2)%d1/=1) print *,10023
         if (v1(2)%b1(2)%cc(2)%dd(2)%b1(2)%cc(2)%dd(2)%x(2)/='12') print *,10014
         if (v1(2)%b1(2)%cc(2)%dd(2)%b2(2)%cc(2)%dd(2)%d1/=1) print *,10025
         if (v1(2)%b1(2)%cc(2)%dd(2)%b2(2)%cc(2)%dd(2)%x(2)/='12') print *,10016
         if (v1(2)%b1(2)%cc(2)%dd(2)%b3(2)%cc(2)%dd(2)%d1/=1) print *,10027
         if (v1(2)%b1(2)%cc(2)%dd(2)%b3(2)%cc(2)%dd(2)%x(2)/='12') print *,10018
         if (v1(2)%b2(2)%cc(2)%dd(2)%d1/=1) print *,31002
         if (v1(2)%b2(2)%cc(2)%dd(2)%x(2)/='12') print *,310011
         if (v1(2)%b2(2)%cc(2)%dd(2)%b1(2)%cc(2)%dd(2)%d1/=1) print *,310022
         if (v1(2)%b2(2)%cc(2)%dd(2)%b1(2)%cc(2)%dd(2)%x(2)/='12') print *,310014
         if (v1(2)%b2(2)%cc(2)%dd(2)%b2(2)%cc(2)%dd(2)%d1/=1) print *,310024
         if (v1(2)%b2(2)%cc(2)%dd(2)%b2(2)%cc(2)%dd(2)%x(2)/='12') print *,310015
         if (v1(2)%b2(2)%cc(2)%dd(2)%b3(2)%cc(2)%dd(2)%d1/=1) print *,310026
         if (v1(2)%b2(2)%cc(2)%dd(2)%b3(2)%cc(2)%dd(2)%x(2)/='12') print *,10017
         if (v1(2)%b3(2)%cc(2)%dd(2)%d1/=1) print *,10028
         if (v1(2)%b3(2)%cc(2)%dd(2)%x(2)/='12') print *,10019
         if (v1(2)%b3(2)%cc(2)%dd(2)%b1(2)%cc(2)%dd(2)%d1/=1) print *,1502
         if (v1(2)%b3(2)%cc(2)%dd(2)%b1(2)%cc(2)%dd(2)%x(2)/='12') print *,1601
         if (v1(2)%b3(2)%cc(2)%dd(2)%b2(2)%cc(2)%dd(2)%d1/=1) print *,1072
         if (v1(2)%b3(2)%cc(2)%dd(2)%b2(2)%cc(2)%dd(2)%x(2)/='12') print *,1801
         if (v1(2)%b3(2)%cc(2)%dd(2)%b3(2)%cc(2)%dd(2)%d1/=1) print *,1902
         if (v1(2)%b3(2)%cc(2)%dd(2)%b3(2)%cc(2)%dd(2)%x(2)/='12') print *,114
     end select
     deallocate(v1)
     end

     call s1
     print *,'sngg010q : pass'
     end 

