     module m1
       type  b
         integer(8)::d1
         class (b),allocatable:: b1
       end type
       type,extends(b)::be
         class (b),allocatable:: b2
       end type
       type,extends(be)::bee
         class (b),allocatable:: b3
         character(:),allocatable::x
       end type
       contains
       subroutine s(d)
         class(*)::d
!print *,100
         select type(z=>d)
           type is(bee)
             z%d1=1
             allocate(bee::z%b1)
             call ss(z%b1)
             allocate(bee::z%b2)
             call ss(z%b2)
             allocate(bee::z%b3)
             call ss(z%b3)
             allocate(z%x,source='12')
           class default
            print *,300
         end select
       end
    subroutine ss(d)
         class(*)::d
         select type(z=>d)
           type is(bee)
             z%d1=1
             allocate(bee::z%b1)
             call sss(z%b1)
             allocate(bee::z%b2)
             call sss(z%b2)
             allocate(bee::z%b3)
             call sss(z%b3)
             allocate(z%x,source='12')
           class default
            print *,3001
         end select
    end
    subroutine sss(d)
         class(*)::d
         select type(z=>d)
           type is(bee)
             z%d1=1
             allocate(z%x,source='12')
           class default
            print *,30012
         end select
    end
     end
     
     subroutine s1
     use m1
     class(*),allocatable :: v1,v2
     allocate(bee::v1)
     call s(v1)
     allocate(v2,source=v1)
     select type(v2)
       type is (bee)
         v2%x ='aa'
         v2%d1=-1
 select type(p=>v2%b1)
       type is (bee)
         p%x ='aa'
         p%b1%d1=-1
 select type(q=>p %b1)
       type is (bee)
         q%d1=-1
         q   %x ='aa'
 end select
 select type(q=>p %b2)
       type is (bee)
         q%d1=-1
         q%x ='aa'
 end select
 select type(q=>p %b3)
       type is (bee)
         q   %d1=-1
         q   %x ='aa'
 end select
 end select
 select type(p=>v2%b2)
       type is (bee)
         p%x ='aa'
         p    %d1=-1
 select type(q=>p %b1)
       type is (bee)
         q%d1=-1
         q%x ='aa'
 end select
 select type(q=>p %b2)
       type is (bee)
         q   %d1=-1
         q   %x ='aa'
 end select
 select type(q=>p %b3)
       type is (bee)
         q   %d1=-1
         q   %x ='aa'
 end select
 end select
 select type(p=>v2%b3)
       type is (bee)
         p%x ='aa'
         p   %d1=-1
 select type(q=>p %b1)
       type is (bee)
         q   %d1=-1
         q   %x ='aa'
 end select
 select type(q=>p %b2)
       type is (bee)
         q   %d1=-1
         q   %x ='aa'
 end select
 select type(q=>p %b3)
       type is (bee)
         q   %d1=-1
         q   %x ='aa'
 end select
 end select
 end select
   
     select type(p=>v1)
       type is (bee)
         if (p%d1/=1) print *,1002
         if (p%x/='12') print *,1001
 select type(q=>p %b1)
       type is (bee)
         if (q%d1/=1) print *,10021
         if (q%x/='12') print *,10011
 select type(r=>q %b1)
       type is (bee)
         if (r   %d1/=1) print *,10023
         if (r   %x/='12') print *,10014
 end select
 select type(r=>q %b2)
       type is (bee)
         if (r   %d1/=1) print *,10025
         if (r   %x/='12') print *,10016
 end select
 select type(r=>q %b3)
       type is (bee)
         if (r   %d1/=1) print *,10027
         if (r   %x/='12') print *,10018
 end select
 end select
 select type(q=>p %b2)
       type is (bee)
         if (q%d1/=1) print *,31002
         if (q%x/='12') print *,310011
 select type(r=>q %b1)
       type is (bee)
         if (r   %d1/=1) print *,310022
         if (r   %x/='12') print *,310014
 end select
 select type(r=>q %b2)
       type is (bee)
         if (r   %d1/=1) print *,310024
         if (r   %x/='12') print *,310015
 end select
 select type(r=>q %b3)
       type is (bee)
         if (r   %d1/=1) print *,310026
         if (r   %x/='12') print *,10017
 end select
 end select
 select type(q=>p %b3)
       type is (bee)
         if (q   %d1/=1) print *,10028
         if (q   %x/='12') print *,10019
 select type(r=>q %b1)
       type is (bee)
         if (r   %d1/=1) print *,1502
         if (r   %x/='12') print *,1601
 end select
 select type(r=>q %b2)
       type is (bee)
         if (r   %d1/=1) print *,1072
         if (r   %x/='12') print *,1801
 end select
 select type(r=>q %b3)
       type is (bee)
         if (r   %d1/=1) print *,1902
         if (r   %x/='12') print *,1141
     end select
 end select
 end select
     deallocate(v1)
     end

     call s1
     print *,'sngg979p : pass'
     end 

