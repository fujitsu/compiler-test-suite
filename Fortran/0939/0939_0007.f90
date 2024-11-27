    type ty
     integer:: a(3)=[11,12,13]
    end type
    integer::v(3)=[3,1,2]
    interface
      function  f1( x )
         integer,asynchronous,value::x(:)
         integer::f1
      end function
    end interface
    type(ty)::obj
    if(f1( obj%a(v)) /= 20)print*,201
    if (any(obj%a/=[11,12,13])) print *,101
    print *,'PASS'
end

   function  f1( x )
     integer,asynchronous,value::x(:)
     integer::f1
     if (any(x/=[13,11,12])) print *,102
     x=1
     if (any(x/=1)) print *,103
     f1=20
   end function
