module m1
  type x
    integer::x1
    class(x),allocatable::x2
  end type
  type,extends(x)::xx
    integer::x3
    class(x),allocatable::x4
  end type
  class(*),allocatable::var1,var2
  contains
  subroutine s
    allocate(var2, source=var1)
  end
end
use m1
allocate(x::var1)
select type(var1)
type is(x)
var1%x1=1
allocate(xx::var1%x2)
select type(t=>var1%x2)
 type is(xx)
   t%x1=2
   allocate(xx::t%x2)
   select type(y=>t%x2)
     type is(xx)
       y%x1=3
   end select
   t%x3=-2
   allocate(xx::t%x4)
   select type(y=>t%x4)
     type is(xx)
       y%x1=-4
   end select
end select
end select
  
call s

select type(var2)
type is(x)
if (var2%x1/=1) print *,1001
var2%x1=11
k=0
select type(t=>var2%x2)
 type is(xx)
   if (t%x1/=2) print *,1002
   t%x1=12
   select type(y=>t%x2)
     type is(xx)
       if (y%x1/=3) print *,1003
       y%x1=13
       if (allocated(y%x2)) print *,1004
       allocate(xx::y%x2) 
       select type(z=>y%x2)
         type is(xx)
          z%x1=14
          k=1
       end select
   end select
   if (k/=1) print *,3011
   k=0
   if (t%x3/=-2) print *,1022
   t%x3=-12
   select type(y=>t%x4)
     type is(xx)
       if (y%x1/=-4) print *,1003
       y%x1=-14
       if (allocated(y%x2)) print *,1004
       allocate(x::y%x2) 
       select type(z=>y%x2)
         type is(x)
          z%x1=-114
          k=1
       end select
   end select
end select
end select
if (k/=1) print *,3001
k=0
select type(var1)
type is(x)
select type(t=>var1%x2)
 type is(xx)
   if (t%x1/=2) print *,2002
   select type(y=>t%x2)
     type is(xx)
       if (y%x1/=3) print *,2003
       if (allocated(y%x2)) print *,2004
       k=1
   end select
   if (t%x3/=-2) print *,501
   if (k/=1) print *,3102
   k=0
   select type(y=>t%x4)
     type is(xx)
       if (y%x1/=-4) print *,10122
          k=1
   end select
end select
end select
if (k/=1) print *,3202
print *,'sngg576p : pass'
end


