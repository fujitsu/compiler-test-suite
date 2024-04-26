      program main
      call sub(2) 
      end

      subroutine sub(n)  
      integer ia,ib,ic
      pointer (ip,ia),(ip,ic)
      ip=loc(ib)
      ib=2

      do i=1,n
         ia=ia+ia
      enddo
      call print(ic,8)  

      do i=1,n
         ia=ia+ib
      enddo
      call print(ic,32)  

      do i=1,n
         ia=ib+ia 
      enddo
      call print(ic,128)  

      do i=1,n
         ia=ib+ib
      enddo
      call print(ic,512)  

      do i=1,n
         ib=ia+ia
      enddo
      call print(ic,2048)  

      do i=1,n
         ib=ia+ib
      enddo
      call print(ic,8192)  

      do i=1,n
         ib=ib+ia 
      enddo
      call print(ic,32768)  

      do i=1,n
         ib=ib+ib
      enddo
      call print(ic,131072)  

      end

      subroutine print(ires,ians)
        if(ians.eq.ires) then
          print *, '*** ok  res=', ires, ' ans=', ians
        else 
          print *, '*** ng  res=', ires, ' ans=', ians
        endif
      end
