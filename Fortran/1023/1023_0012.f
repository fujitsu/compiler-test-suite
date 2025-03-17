       end
       subroutine sub(a,i,b,j)
       real a(j:*),b(i:j,*)
       call s(a,b)
       a(1)=1
       b(1,1)=2
       end
       subroutine s()
       i=1
       end

