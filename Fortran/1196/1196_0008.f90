     module m1
       type d
         class (b),allocatable:: dd(:)
       end type
       type c
         type (d),allocatable:: cc(:)
       end type
       type  b
         integer(8)::d1
         type (c),allocatable:: b1(:)
       end type
       type,extends(b)::be
         type (c),allocatable:: b2(:)
       end type
       type,extends(be)::bee
         type (c),allocatable:: b3(:)
         character(:),allocatable::x(:)
       end type
       contains
       subroutine s(d)
         class(b)::d(:)
!print *,100
         select type(z=>d(2))
           type is(bee)
             z%d1=1
             allocate(z%b1(2))
             allocate(z%b1(2)%cc(2))
             allocate(bee::z%b1(2)%cc(2)%dd(2))
             call ss(z%b1(2)%cc(2)%dd)
             allocate(z%b2(2))
             allocate(z%b2(2)%cc(2))
             allocate(bee::z%b2(2)%cc(2)%dd(2))
             call ss(z%b2(2)%cc(2)%dd)
             allocate(z%b3(2))
             allocate(z%b3(2)%cc(2))
             allocate(bee::z%b3(2)%cc(2)%dd(2))
             call ss(z%b3(2)%cc(2)%dd)
             allocate(z%x(2),source='12')
           class default
            print *,300
         end select
       end
    subroutine ss(d)
         class(b)::d(:)
         select type(z=>d(2))
           type is(bee)
             z%d1=1
             allocate(z%b1(2))
             allocate(z%b1(2)%cc(2))
             allocate(bee::z%b1(2)%cc(2)%dd(2))
             call sss(z%b1(2)%cc(2)%dd)
             allocate(z%b2(2))
             allocate(z%b2(2)%cc(2))
             allocate(bee::z%b2(2)%cc(2)%dd(2))
             call sss(z%b2(2)%cc(2)%dd)
             allocate(z%b3(2))
             allocate(z%b3(2)%cc(2))
             allocate(bee::z%b3(2)%cc(2)%dd(2))
             call sss(z%b3(2)%cc(2)%dd)
             allocate(z%x(2),source='12')
           class default
            print *,3001
         end select
    end
    subroutine sss(d)
         class(b)::d(:)
         select type(z=>d(2))
           type is(bee)
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
     allocate(bee::v1(2))
     call s(v1)
     allocate(v2,source=v1)
     select type(p=>v2)
       type is (bee)
         p(2)%x(2) ='aa'
  select type(q=>p(2)%b1(2)%cc(2)%dd)
       type is (bee)
         q(2)%d1=-1
         q(2)%x(2) ='aa'
  select type(r=>q(2)%b1(2)%cc(2)%dd)
       type is (bee)
         r(2)      %d1=-1
         r(2)      %x(2) ='aa'
   end select
  select type(r=>q(2)%b2(2)%cc(2)%dd)
       type is (bee)
         r(2)      %d1=-1
         r(2)      %x(2) ='aa'
   end select
  select type(r=>q(2)%b3(2)%cc(2)%dd)
       type is (bee)
         r(2)      %d1=-1
         r(2)      %x(2) ='aa'
   end select
   end select
  select type(q=>p(2)%b2(2)%cc(2)%dd)
       type is (bee)
         q(2)%d1=-1
         q(2)%x(2) ='aa'
  select type(r=>q(2)%b1(2)%cc(2)%dd)
       type is (bee)
         r(2)      %d1=-1
         r(2)      %x(2) ='aa'
   end select
  select type(r=>q(2)%b2(2)%cc(2)%dd)
       type is (bee)
         r(2)      %d1=-1
         r(2)      %x(2) ='aa'
   end select
  select type(r=>q(2)%b3(2)%cc(2)%dd)
       type is (bee)
         r(2)      %d1=-1
         r(2)      %x(2) ='aa'
   end select
   end select
  select type(q=>p(2)%b3(2)%cc(2)%dd)
       type is (bee)
         q(2)%d1=-1
         q(2)%x(2) ='aa'
  select type(r=>q(2)%b1(2)%cc(2)%dd)
       type is (bee)
         r(2)      %d1=-1
         r(2)      %x(2) ='aa'
   end select
  select type(r=>q(2)%b2(2)%cc(2)%dd)
       type is (bee)
         r(2)     %d1=-1
         r(2)     %x(2) ='aa'
   end select
  select type(r=>q(2)%b3(2)%cc(2)%dd)
       type is (bee)
         r(2)     %d1=-1
         r(2)     %x(2) ='aa'
   end select
   end select
     end select
     select type(p=>v1)
       type is (bee)
         if (p(2)%d1/=1) print *,1002
         if (p(2)%x(2)/='12') print *,1001
  select type(q=>p(2)%b1(2)%cc(2)%dd)
       type is (bee)
         if (q(2)%d1/=1) print *,10021
         if (q(2)%x(2)/='12') print *,10011
  select type(r=>q(2)%b1(2)%cc(2)%dd)
       type is (bee)
         if (r(2)     %d1/=1) print *,10023
         if (r(2)%x(2)/='12') print *,10014
   end select
  select type(r=>q(2)%b2(2)%cc(2)%dd)
       type is (bee)
         if (r(2)     %d1/=1) print *,10323
         if (r(2)%x(2)/='12') print *,13014
   end select
  select type(r=>q(2)%b3(2)%cc(2)%dd)
       type is (bee)
         if (r(2)     %d1/=1) print *,14323
         if (r(2)%x(2)/='12') print *,43014
   end select
   end select
  select type(q=>p(2)%b2(2)%cc(2)%dd)
       type is (bee)
         if (q(2)%d1/=1) print *,60021
         if (q(2)%x(2)/='12') print *,60011
  select type(r=>q(2)%b1(2)%cc(2)%dd)
       type is (bee)
         if (r(2)     %d1/=1) print *,60023
         if (r(2)%x(2)/='12') print *,60014
   end select
  select type(r=>q(2)%b2(2)%cc(2)%dd)
       type is (bee)
         if (r(2)     %d1/=1) print *,60323
         if (r(2)%x(2)/='12') print *,63014
   end select
  select type(r=>q(2)%b3(2)%cc(2)%dd)
       type is (bee)
         if (r(2)     %d1/=1) print *,64323
         if (r(2)%x(2)/='12') print *,63014
   end select
   end select
  select type(q=>p(2)%b3(2)%cc(2)%dd)
       type is (bee)
         if (q(2)%d1/=1) print *,80021
         if (q(2)%x(2)/='12') print *,80011
  select type(r=>q(2)%b1(2)%cc(2)%dd)
       type is (bee)
         if (r(2)     %d1/=1) print *,80023
         if (r(2)%x(2)/='12') print *,80014
   end select
  select type(r=>q(2)%b2(2)%cc(2)%dd)
       type is (bee)
         if (r(2)     %d1/=1) print *,80323
         if (r(2)%x(2)/='12') print *,83014
   end select
  select type(r=>q(2)%b3(2)%cc(2)%dd)
       type is (bee)
         if (r(2)     %d1/=1) print *,84323
         if (r(2)%x(2)/='12') print *,83014
   end select
   end select
     end select
     deallocate(v1)
     end

     call s1
     print *,'sngg011q : pass'
     end 

