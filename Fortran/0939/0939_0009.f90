        type ty
         integer:: a(3)=[11,12,13]
        end type
        integer::v(3)=[3,1,2]
        type(ty)::obj
        integer::aa(3)=[13,11,12]
        interface
         elemental  function f( x,y)
          integer,asynchronous,intent(in)::x
          integer,intent(in)::y
          integer::f
         end function
        end interface
         if  (any(f(obj%a(v) ,aa) /= [36,32,34]))print*,110
         if (any(obj%a/=[11,12,13])) print *,101
         print *,'PASS'
        end


         elemental  function f( x,y)
          integer,asynchronous,intent(in)::x
          integer,intent(in)::y
          integer::f
          f=10+y+x
         end function
         

