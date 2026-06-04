 1 type yy
        2   integer::a
        3 end type
   
        5 type,extends(yy)::yyy
        6    integer::b
        7 end type
  
        9 class(yy),pointer::x(:)
       10 class(yy),pointer::xx
       11 allocate(yyy::x(3))
       12 allocate(yy::xx)
 
       14 select type (p1=> x)
       15    class default
       16        print*,"401"
       17    type is (yy)
       18      select type( p2=> xx)
       19        class default
       20          print*,"402"
       21        type is (yyy)
       22         print*,"101"
       23      end select
       24    type is (yyy)
       25      p1(2)%a=2
       26      p1(2)%b=13
       27     select type (p2=> x(p1(2)%a))
       28      class default
       29          print*,"403"
       30      type is (yyy)
       31       if(p2%a.ne.2)print*,"104"
       32       if(p2%b.ne.13)print*,"102"
       33       if(x(2)%a.ne.2)print*,"106"
       34    end select
       35 end select
       36     print*,"sngg576k : pass"
       37 end

