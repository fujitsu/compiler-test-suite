integer:: a(3)=[11,12,13]
           integer::v(3)=[3,1,2],aa(3)=[13,11,12]
           call s((a(v)),aa)
           call s(a(v)+0,aa)
            if(any(a /= [11,12,13])) print*,101
           print*,"pass"
           contains
            subroutine s( x,y)
           integer,asynchronous,intent(in)::x(:)
             integer,intent(in)::y(:)
            if(any(x /= [13,11,12])) print*,102
            if(any(y /= [13,11,12])) print*,103
            end subroutine
         end
