      program main
        call sub1(5)
        call sub2(1) 
        call sub2(2)
      end

      subroutine sub1(n)
        if(n.ne.0) then
          isum=0
          goto 100
        endif

        print *,'*** ng case1 ***'
        stop
  
  100   do i=1,n
          isum=isum+1
          cycle
        enddo

        print *,'*** ok case1 ***'
        return 
    
      end   

      subroutine sub2(n)

      goto (100,200) n
    
      print *, '*** ng case2 ***'
      stop

  100 do i=2,5
         goto (100,200) i
      enddo  

  200 do i=3,5  
         goto (100,200,300) i 
  300    exit      
      enddo 

  400 print *, '*** reached #400 ***'
      print *, '*** ok           ***'   

      return
      end
