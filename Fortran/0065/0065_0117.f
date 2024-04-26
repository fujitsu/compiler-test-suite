      program maxmin4
        integer a(5),b(5),maxab(5),minab(5)
        data     a/1,2,3,4,5/
        data     b/6,5,4,3,2/
        data maxab/6,5,4,4,5/ 
        data minab/1,2,3,3,2/

        print *,"*** begin ***"
        call sub(a,b,maxab,minab,5) 
        print *,"*** end   ***"

      end

      subroutine sub(a,b,maxab,minab,n) 
        integer a(n),b(n),maxab(n),minab(n)
        integer x(n),y(n),z(n)

        x=max(a,b)   
        y=min(a,b)   
        call chk( 1,x,maxab,n) 
        call chk( 2,y,minab,n) 

        x=min(a,b)
        y=max(a,b)
        call chk( 3,x,minab,n) 
        call chk( 4,y,maxab,n) 

        x=max(a,b)
        y=min(a,b)
        z=max(a,b) 
        call chk( 5,x,maxab,n) 
        call chk( 6,y,minab,n) 
        call chk( 7,z,maxab,n) 

        x=min(a,b)
        y=max(a,b)
        z=min(a,b)
        call chk( 8,x,minab,n) 
        call chk( 9,y,maxab,n) 
        call chk(10,z,minab,n) 

      end

      subroutine chk(k,res,ans,n) 
        integer res(n),ans(n)
        do i=1,n
           if(res(i).ne.ans(i)) then
             print *,"*** ng test no. = ",k, "res=",res,"ans=",ans    
             return        
           endif 
        enddo
        print *,"*** ok test no. = ",k
        return
      end
