         integer:: a(3)=[11,12,13]
        integer::v(3)=[3,1,2]
        integer::aa(3)=[13,11,12]
        interface
        impure  elemental  function f( x,y)
          integer,asynchronous,intent(in)::x
          integer,intent(in)::y
          integer::f
         end function
        end interface
      
         if  (any(f((a(v)) ,aa) /= [36,32,34]))print*,110

         if  (any(a/=[11,12,13])) print *,101
         print *,'PASS'
        end


         impure elemental  function f( x,y)
          integer,asynchronous,intent(in)::x
          integer,intent(in)::y
          integer::f
          if( x /= y)print*,201
          f=10+y+x
         end function
         

