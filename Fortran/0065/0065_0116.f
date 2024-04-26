      program maxmin3
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

        do i=1,n
           x(i)=max(a(i),b(i))   
           y(i)=min(b(i),a(i))   
        enddo 
        call chk( 1,x,maxab,n) 
        call chk( 2,y,minab,n) 

        do i=1,n
           x(i)=min(b(i),a(i))
           y(i)=max(a(i),b(i))
        enddo 
        call chk( 3,x,minab,n) 
        call chk( 4,y,maxab,n) 

        do i=1,n
           x(i)=max(a(i),b(i))
           y(i)=min(a(i),b(i))
           z(i)=max(b(i),a(i)) 
        enddo 
        call chk( 5,x,maxab,n) 
        call chk( 6,y,minab,n) 
        call chk( 7,z,maxab,n) 

        do i=1,n
           x(i)=min(a(i),b(i))
           y(i)=max(b(i),a(i))
           z(i)=min(a(i),b(i))
        enddo 
        call chk( 8,x,minab,n) 
        call chk( 9,y,maxab,n) 
        call chk(10,z,minab,n) 

        do i=1,n
           x(i)=min(a(i),b(i))
           if(x(i).ne.0) then
             y(i)=max(a(i),b(i))
           endif
           z(i)=min(a(i),b(i))
        enddo 
        call chk(11,x,minab,n) 
        call chk(12,y,maxab,n) 
        call chk(13,z,minab,n) 

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
