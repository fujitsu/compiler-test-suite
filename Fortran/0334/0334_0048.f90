
      character(kind=KIND('+'),len=4),pointer            ::ch4p(:)
      character(kind=KIND('-'),len=4)             ,target::ch4t(5)
      character(kind=KIND('*'),len=4),allocatable,target ::ch4a(:)
      character(kind=KIND('/'),len=5)::result(0:8)
      character(kind=KIND('='),len=LEN('='))::delim(6) &
                                       =(/'/','/',' ',':',':','.'/)
      integer(kind=KIND(0_4))::error/0/
      character(len=LEN('YYYY/MM/DD HH:MM:SS.'))::data
      character(len=1)                          ::char(20)

      interface 
        character(kind=KIND('?'),len=5) function cfun1(r,p,s)
          character(kind=KIND('&'),len=4),intent(in)      ::r(:)
          character(kind=KIND('!'),len=4),optional,pointer::p(:)
          character(kind=KIND('@'),len=*),intent(in)      ::s
        end function
      end interface

      result(0)='ok !!'
      call DATE_AND_TIME(data(:8),data(9:))
      char((/1,2,3,4,6,7,9,10,12,13,15,16,18,19/)) &
                              =(/(data(i:i),i=1,14)/)
      char((/5,8,11,14,17,20/))=delim
      ch4t=(/(char(i)//char(i+1)//char(i+2)//char(i+3),i=1,17,4)/)
      nullify(ch4p)
      result(1)= &
        cfun1((/(char(i)//char(i+1)//char(i+2)//char(i+3),i=1,17,4)/) &
                ,ch4p,"nullify")
      ch4p=>ch4t
      ch4t=ch4p(:)(3:4)//ch4t(:)(1:2)
      result(2)= &
        cfun1((/(char(i)//char(i+1)//char(i+2)//char(i+3),i=1,17,4)/) &
                ,ch4p,"associated")
      allocate(ch4p(1:0))
      result(3)= &
        cfun1((/(char(i)//char(i+1)//char(i+2)//char(i+3),i=1,17,4)/) &
                ,ch4p,"0 size array") 
      nullify(ch4p)
      result(4)= &
        cfun1(r=(/(char(i)//char(i+1)//char(i+2)//char(i+3),i=1,17,4)/) &
                  ,s="optional")
      ch4p=>ch4a
      result(5)= &
        cfun1((/(char(i)//char(i+1)//char(i+2)//char(i+3),i=1,17,4)/) &
                ,ch4p,"not allocated")
      allocate(ch4a(1:0))
      ch4p=>ch4a
      result(6)= &
        cfun1((/(char(i)//char(i+1)//char(i+2)//char(i+3),i=1,17,4)/) &
                ,ch4p,"0 size target")
      deallocate(ch4a)
      allocate(ch4a(1:5))
      ch4p=>ch4a
      ch4a=ch4t
      ch4p=ch4a(:)(3:4)//ch4a(:)(1:2)
      result(7)= &
        cfun1((/(char(i)//char(i+1)//char(i+2)//char(i+3),i=1,17,4)/) &
                ,ch4p,"allocated target")
      deallocate(ch4a)
      do i=1,7
         if(result(i)/=result(0)) then
            error=i
         endif
      enddo
      write(6,*) '*** ',result(error),' ***'
      stop
      end
      character(kind=KIND('#'),len=5) function cfun1(r,p,s) result(res)
      character(kind=KIND('$'),len=4),intent(in)      ::r(:)
      character(kind=KIND('%'),len=4),optional,pointer::p(:)
      character(kind=KIND('|'),len=*),intent(in)      ::s
      integer(kind=KIND(0_4)),save::call_count=0

      call_count=call_count+1
      res='ok   '
      if(call_count/=5) then
         if(PRESENT(p)) then
            if(ASSOCIATED(p)) then
               if(SIZE(p)/=0) then
                  if(call_count/=2 .AND. call_count/=7) then
                     write(6,*) 'error at ',s
                     res='ng ??'
                  else
                     p=p(:)(3:4)//p(:)(1:2)
                     if(SIZE(PACK(p,p/=r))/=0) then
                        res='ng ??'
                     endif
                  endif
               else
                  if(call_count/=3 .AND. call_count/=6) then
                     write(6,*) 'error at ',s
                     res='ng ??'
                  endif
               endif
            else
               if(call_count/=1) then
                  write(6,*) 'error at ',s
                  res='ng ??'
               endif
            endif
         else
            if(call_count/=4) then
               write(6,*) 'error at ',s
               res='ng ??'
            endif
         endif
      endif
      end function
