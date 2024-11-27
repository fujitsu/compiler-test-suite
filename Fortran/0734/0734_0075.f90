        integer a(5),b(5),maxab(5),minab(5)
        data     a/1,2,3,4,5/
        data     b/6,5,4,3,2/
        data maxab/6,5,4,4,5/ 
        data minab/1,2,3,3,2/

        call sub(a,b,maxab,minab,5) 
        print *,'pass'

      end

      subroutine sub(a,b,maxab,minab,n) 
        integer a(n),b(n),maxab(n),minab(n)
        integer x(n),y(n),z(n)

         z=max(a,b) 
        call chk( 7,z,maxab,n) 

      end

      subroutine chk(k,res,ans,n) 
        integer res(n),ans(n)
        do i=1,n
           if(res(i).ne.ans(i)) then
             print *,"*** ng test no. = ",k, "res=",res,"ans=",ans    
             return        
           endif 
        enddo
        return
      end
