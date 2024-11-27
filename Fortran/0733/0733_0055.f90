       integer,target:: a(10)
       integer,pointer,dimension(:)::c
       data a/10*1/
       common/com1/a
       common/com2/c
       call sub
       do i=1,10
         c(i)=a(5)+1
       enddo
       if (any(abs(c(:5)-2)>0.0001))print *,'error-1'
       if (any(abs(c(6:)-3)>0.0001))print *,'error-3'
       print *,'pass'
       end
       subroutine sub()
       real,target:: a(10)
       real,pointer,dimension(:)::c
       common/com1/a
       common/com2/c
       c=>a
       end subroutine
