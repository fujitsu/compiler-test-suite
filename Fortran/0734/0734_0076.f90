        integer a(2),b(2),m(2)
        data     a/1,5/
        data     b/6,2/
        data m/6,5/ 
        call sub(a,b,m,2) 
        print *,'pass'
      end
      subroutine sub(a,b,maxab,n) 
        integer a(n),b(n),maxab(n)
        integer z(n)
         z=max(a,b) 
        call chk( z,maxab,n) 
      end
      subroutine chk(res,ans,n) 
        integer res(n),ans(n)
        if (any(res/=ans))then
           print *,'error'
           print *,res
           print *,ans
        endif
      end
