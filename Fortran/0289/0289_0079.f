      program main

      call sub1() 
      call sub2()
      end
      subroutine sub1()
      integer,allocatable :: a(:),b(:),c(:)
      allocate (a(1),b(1),c(1000))
      a(1)=7890

      deallocate (a,b)
      allocate (b(1000),a(1000))
      a(1)=-7890
      if( a(1).ne.7890 ) then
        print *, '*** #1 ok ***' 
      else 
        print *, '*** #1 ng ***' 
      endif
 
      return 
      end 
      subroutine sub2()
      integer,allocatable :: a(:),b(:),c(:)
      integer             :: d(1),e(1)
      pointer (p,d)
      pointer (q,e)

      allocate (a(1),b(1),c(1000))
     
      p=loc(a)
      deallocate (a,b)
      allocate (b(1000),a(1000))
      q=loc(a)

      if( p.ne.q .or. p==q) then
        print *, '*** #2 ok ***' 
      else 
        print *, '*** #2 ng ***' 
      endif       
      p=loc(b)
      deallocate (b)
      q=loc(b) 

      if( p.ne.q ) then
        print *, '*** #3 ok ***' 
      else 
        print *, '*** #3 ng ***' 
      endif       
      p=loc(a)
      a(1)=0
      q=loc(a)

      if( p.eq.q ) then
        print *, '*** #4 ok ***' 
      else 
        print *, '*** #4 ng ***' 
      endif       
     
      call dummy(a)
      return  
      end 
      subroutine dummy(a)
        integer a(*)    
        a(1)=a(1)
        return
      end
