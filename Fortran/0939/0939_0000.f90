 integer:: a(3)=[11,12,13],v(3)=[3,1,2]
 call s( a(v),a([2,1,3]) )
 if (any(a/=[11,12,13])) print *,101
 print *,'PASS'
 contains
 subroutine s( x,y )
 integer,asynchronous,value::x(:)
 integer,value::y(:)
  asynchronous ::y
 if (any(x/=[13,11,12])) print *,102
 if (any(y/=[12,11,13])) print *,103
 x=1
 y=2
 end subroutine
end


