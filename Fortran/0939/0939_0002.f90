 integer:: a(3,3),v(2)=[3,2]
 a=50
 if(func( a(v,:) )/= 100)print*,103
 if (any(a/=50)) print *,101
 print *,'PASS'
 contains
 integer function func( x )
 integer,value,asynchronous,optional::x(2,3)
  if(present(x)) then
    if (any(x/=50)) print *,102,x
    func= x(1,1)+x(2,3)
    x=100
  end if
 end function
end


