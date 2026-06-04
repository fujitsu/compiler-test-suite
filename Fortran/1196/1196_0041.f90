     module m1
       type d
         class (b),allocatable:: dd
       end type
       type c
         type (d),allocatable:: cc
       end type
       type  b
         integer(8)::d1
         type (c),allocatable:: b1
       end type
       type,extends(b)::be
         type (c),allocatable:: b2
       end type
       type,extends(be)::bee
         type (c),allocatable:: b3
         character(:),allocatable::x
       end type
       contains
       subroutine s(d)
         class(*)::d
!print *,100
         select type(z=>d)
           type is(bee)
             z%d1=1
             allocate(z%b1)
             allocate(z%b1%cc)
             allocate(bee::z%b1%cc%dd)
             call ss(z%b1%cc%dd)
             allocate(z%b2)
             allocate(z%b2%cc)
             allocate(bee::z%b2%cc%dd)
             call ss(z%b2%cc%dd)
             allocate(z%b3)
             allocate(z%b3%cc)
             allocate(bee::z%b3%cc%dd)
             call ss(z%b3%cc%dd)
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
             allocate(z%b1)
             allocate(z%b1%cc)
             allocate(bee::z%b1%cc%dd)
             call sss(z%b1%cc%dd)
             allocate(z%b2)
             allocate(z%b2%cc)
             allocate(bee::z%b2%cc%dd)
             call sss(z%b2%cc%dd)
             allocate(z%b3)
             allocate(z%b3%cc)
             allocate(bee::z%b3%cc%dd)
             call sss(z%b3%cc%dd)
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
     select type(p=>v2)
       type is (bee)
         p%x ='aa'
  select type(q=>p%b1%cc%dd)
       type is (bee)
         q%d1=-1
         q%x ='aa'
  select type(r=>q%b1%cc%dd)
       type is (bee)
         r         %d1=-1
         r         %x ='aa'
   end select
  select type(r=>q%b2%cc%dd)
       type is (bee)
         r         %d1=-1
         r         %x ='aa'
   end select
  select type(r=>q%b3%cc%dd)
       type is (bee)
         r         %d1=-1
         r         %x ='aa'
   end select
   end select
  select type(q=>p%b2%cc%dd)
       type is (bee)
         q%d1=-1
         q%x ='aa'
  select type(r=>q%b1%cc%dd)
       type is (bee)
         r         %d1=-1
         r         %x ='aa'
   end select
  select type(r=>q%b2%cc%dd)
       type is (bee)
         r         %d1=-1
         r         %x ='aa'
   end select
  select type(r=>q%b3%cc%dd)
       type is (bee)
         r         %d1=-1
         r         %x ='aa'
   end select
   end select
  select type(q=>p%b3%cc%dd)
       type is (bee)
         q%d1=-1
         q%x ='aa'
  select type(r=>q%b1%cc%dd)
       type is (bee)
         r         %d1=-1
         r         %x ='aa'
   end select
  select type(r=>q%b2%cc%dd)
       type is (bee)
         r         %d1=-1
         r         %x ='aa'
   end select
  select type(r=>q%b3%cc%dd)
       type is (bee)
         r         %d1=-1
         r         %x ='aa'
   end select
   end select
     end select
     select type(p=>v1)
       type is (bee)
         if (p%d1/=1) print *,1002
         if (p%x/='12') print *,1001
  select type(q=>p%b1%cc%dd)
       type is (bee)
         if (q%d1/=1) print *,10021
         if (q%x/='12') print *,10011
  select type(r=>q%b1%cc%dd)
       type is (bee)
         if (r         %d1/=1) print *,10023
         if (r%x/='12') print *,10014
   end select
  select type(r=>q%b2%cc%dd)
       type is (bee)
         if (r         %d1/=1) print *,10323
         if (r%x/='12') print *,13014
   end select
  select type(r=>q%b3%cc%dd)
       type is (bee)
         if (r         %d1/=1) print *,14323
         if (r%x/='12') print *,43014
   end select
   end select
  select type(q=>p%b2%cc%dd)
       type is (bee)
         if (q%d1/=1) print *,60021
         if (q%x/='12') print *,60011
  select type(r=>q%b1%cc%dd)
       type is (bee)
         if (r         %d1/=1) print *,60023
         if (r%x/='12') print *,60014
   end select
  select type(r=>q%b2%cc%dd)
       type is (bee)
         if (r         %d1/=1) print *,60323
         if (r%x/='12') print *,63014
   end select
  select type(r=>q%b3%cc%dd)
       type is (bee)
         if (r         %d1/=1) print *,64323
         if (r%x/='12') print *,63014
   end select
   end select
  select type(q=>p%b3%cc%dd)
       type is (bee)
         if (q%d1/=1) print *,80021
         if (q%x/='12') print *,80011
  select type(r=>q%b1%cc%dd)
       type is (bee)
         if (r         %d1/=1) print *,80023
         if (r%x/='12') print *,80014
   end select
  select type(r=>q%b2%cc%dd)
       type is (bee)
         if (r         %d1/=1) print *,80323
         if (r%x/='12') print *,83014
   end select
  select type(r=>q%b3%cc%dd)
       type is (bee)
         if (r         %d1/=1) print *,84323
         if (r%x/='12') print *,83014
   end select
   end select
     end select
     deallocate(v1)
     end

     call s1
     print *,'sngg981p : pass'
     end 

