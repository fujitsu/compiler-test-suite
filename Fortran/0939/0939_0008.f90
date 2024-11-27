interface
 subroutine s( x )
 integer,asynchronous,value::x(:)
 end subroutine
end interface 

 integer:: a(3)=[11,12,13],v(3)=[3,1,2]
 call s( a(v) )
 if (any(a/=[11,12,13])) print *,101
 print *,'PASS'
end

 subroutine s( x )
  interface
   subroutine s2( x )
    integer::x(:)
   end subroutine
  end interface
 integer,asynchronous,value::x(:)
 integer::v(3)=[3,1,2]
 if (any(x/=[13,11,12])) print *,102
 x=[20,21,22]
 call s2(x(v))
 if (any(x/=[20,21,22])) print *,104
 end subroutine

 subroutine s2( x )
 integer::x(:)
 if (any(x/=[22,20,21])) print *,103
 x=1
 end subroutine
