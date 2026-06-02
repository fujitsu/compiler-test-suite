module m1
  type x
    integer::x1
    class(*),allocatable::x2
  end type
  class(x),allocatable::var1,var2
  contains
  subroutine s
    allocate(var2, source=var1)
  end
end
use m1
allocate(var1)
var1%x1=1
allocate(x::var1%x2)
select type(t=>var1%x2)
 type is(x)
   t%x1=2
   allocate(x::t%x2)
   select type(y=>t%x2)
     type is(x)
       y%x1=3
   end select
end select
  
call s

if (var2%x1/=1) print *,1001
var2%x1=11
k=0
select type(t=>var2%x2)
 type is(x)
   if (t%x1/=2) print *,1002
   t%x1=12
   select type(y=>t%x2)
     type is(x)
       if (y%x1/=3) print *,1003
       y%x1=13
       if (allocated(y%x2)) print *,1004
       allocate(x::y%x2) 
       select type(z=>y%x2)
         type is(x)
          z%x1=14
          k=1
       end select
   end select
end select
if (k/=1) print *,3001
k=0
select type(t=>var1%x2)
 type is(x)
   if (t%x1/=2) print *,2002
   select type(y=>t%x2)
     type is(x)
       if (y%x1/=3) print *,2003
       if (allocated(y%x2)) print *,2004
       k=1
   end select
end select
if (k/=1) print *,3002
print *,'sngg565p : pass'
end


