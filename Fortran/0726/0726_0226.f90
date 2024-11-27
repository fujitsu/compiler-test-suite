 call s1
 print *,'pass'
 end 
  subroutine s1
          integer a(3),b(3)/1,2,3/
          forall(i=1:3)
           a=b(i)
          end forall
          if (any(a/=3))write(6,*) "NG"
end
