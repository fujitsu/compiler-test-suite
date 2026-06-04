 1 type yy
        2   integer::a
        3 end type

        5 type,extends(yy)::yyy
        6    integer::b
        7 end type

        9 class(yy),pointer::x
       10 class(yy),pointer::xx
       11 allocate(yyy::x)
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
       25      p1%a=12
       26      p1%b=13
       27     select type (p2=> x)
       28      class default
       29          print*,"403"
       30      type is (yyy)
       31       if(p2%a.ne.12)print*,"104"
       32       if(p2%b.ne.13)print*,"102"
       33       if(x%a.ne.12)print*,"106"
       34    end select
       35 end select
       36 select type (p1=> x)
       37    class default
       38          print*,"407"
       39    type is (yyy)
       40     if(p1%a.ne.12)print*,"204"
       41     if(p1%b.ne.13)print*,"202"
       42     print*,"sngg577k : pass"
       43 end select
       44 end


