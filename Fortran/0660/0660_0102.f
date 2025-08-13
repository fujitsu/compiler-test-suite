      program main
       integer :: no1,no2,rten1,rten2,eof1,eof2
       integer :: hval=9999999
       open (8,file='008.input')
       open (9,file='009.input')
       read(8,'(i7,i4)') no1,rten1   
       read(9,'(i7,i4)') no2,rten2
       do 
          if (no1 == hval .and.no2== hval) exit
          if (no1 < no2) then
              write (*,'(i7,i4)') no1,rten1
              read(8,'(i7,i4)',iostat=eof1)no1,rten1
              if (eof1/=0) no1=hval
          else
              write (*,'(i7,i4)') no2,rten2
              read(9,'(i7,i4)',iostat=eof2)no2,rten2
              if (eof2/=0) no2=hval
          end if   
       end do
       print *,'pass'
      end program main
