
      program main
        integer a(5),b(5),maxab(5),minab(5)
        data     a/1,2,3,4,5/
        data     b/6,5,4,3,2/
        data maxab/6,5,4,4,5/ 
        data minab/1,2,3,3,2/

        call sub(a,b,maxab,minab,5) 

      end
    
      subroutine sub(a,b,maxab,minab,n) 
        integer a(n),b(n),maxab(n),minab(n)
        integer x(n),y(n),z(n)

        x=max(a,b)   
        y=min(a,b)   
        call chk(x,maxab,n) 
        call chk(y,minab,n) 

        x=min(a,b)
        y=max(a,b)
        call chk(x,minab,n) 
        call chk(y,maxab,n) 
        
        x=max(a,b)
        y=min(a,b)
        z=max(a,b) 
        call chk(x,maxab,n) 
        call chk(y,minab,n) 
        call chk(z,maxab,n) 

        x=min(a,b)
        y=max(a,b)
        z=min(a,b)
        call chk(x,minab,n) 
        call chk(y,maxab,n) 
        call chk(z,minab,n) 

        x=min(a,b)
        where (x.ne.0)
           y=max(a,b)
        endwhere
        z=min(a,b)
        call chk(x,minab,n) 
        call chk(y,maxab,n) 
        call chk(z,minab,n) 

      end

      subroutine chk(res,ans,n) 
        integer res(n),ans(n)
        integer test_chk(n)
        integer judge

        where (res .ne. ans)
           test_chk = 1
        elsewhere
           test_chk = 0
        endwhere

        judge = sum(test_chk)

        if (judge.eq.0) then
           print *,"OK"
        else
           print *,"NG"
        endif

        return
      end
