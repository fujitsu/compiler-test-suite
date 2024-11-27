       type ty  
        integer:: a
       end type
        type(ty)::obj(3)
        integer::v(3)=[3,1,2]
        integer::aa(3)=[13,11,12]
        interface
        impure  elemental  function f( x,y)
          integer,asynchronous,intent(in)::x
          integer,intent(in)::y
          integer::f
         end function
        end interface
         obj(:)%a = [11,12,13]
         if  (any(f((obj(v)%a) ,aa) /= [36,32,34]))print*,110

         if  (any(obj(:)%a/=[11,12,13])) print *,101
         print *,'PASS'
        end


         impure elemental  function f( x,y)
          integer,asynchronous,intent(in)::x
          integer,intent(in)::y
          integer::f
          if( x /= y)print*,201
          f=10+y+x
         end function
         

