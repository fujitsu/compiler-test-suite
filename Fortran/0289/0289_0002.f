      program main
       
        do i=1,5
           j=i
           call sub1(j)
        enddo

        if(j.eq.5) then
          print *, '*** ok case#1 ***'
        else 
          print *, '*** ng case#1 ***'
        endif

        do i=1,5
           k=i  
           call sub2(k)
        enddo

        if(k.eq.5) then
          print *, '*** ok case#2 ***'
        else 
          print *, '*** ng case#2 ***'
        endif

      stop
      end

      subroutine sub1(n)
      n=0      
      select case (n)
        case(1)
        case(2)
        case(3)
        case(4)
        case default
          n=5
          return 
      endselect       
      return
      end 

      subroutine sub2(n)
      n=0      
      select case (n)
        case(1)
          goto 100
  100     n=0      
        case(2)
          assign 200 to n
          goto n
  200     n=0      
        case(3)
          do
            exit
          enddo    
        case(4)
          do i=1,1
          enddo
        casedefault
          n=5
          return 
      end select       
      return
      end 
