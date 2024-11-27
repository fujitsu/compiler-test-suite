 call s1
 print *,'pass'
 end
 subroutine s1
integer a(2)/1,2/,b(2)
forall (i=1:2)
  where(a.eq.i) 
      b=2
  else where
      b=1
  end where
end forall
  if (any(b/=1))write(6,*) "NG"
end 
