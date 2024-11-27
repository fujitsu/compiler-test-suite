 call s1
 print *,'pass'
 end
 subroutine s1
        integer a(3,3)/0,1,2,3,4,5,6,7,8/
        data n/3/
        forall(i=1:n-1)
          forall(j=i+1:n)
            a(i,j)=a(j,i)
          end forall
        end forall
        if (any(a/=reshape((/ 0,1,2,1,4,5,2,5,8/),(/3,3/))))write(6,*) "NG"
        end
