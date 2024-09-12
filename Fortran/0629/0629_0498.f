      integer i,ii,inc,a(10),right(10)
      integer equ2
      data right/2,3,1,2,6*1/
      equivalence (equ2,inc,ii)
      data a/10*0/
      equ2 = 1
      do 30 ii=1,3,inc
        a(ii)=a(ii)+1.0
   30 continue
      do 200 i=1,10
        if (a(i) .ne. right(i)) then
          write (6,*) 'result ==> ',a
          goto 100
        endif
  200 continue
      write (6,*) ' ****  ok  **** '
  100 continue
      write (6,*) ' ####  end    #### '
      call sub1(1,10,1)
      stop
      end
       subroutine sub1(m1,m2,m3)
       integer*4 a(m2),m1,m2,m3,i
       do i=m1,m2,m3
         a(i)=i+3
       enddo
       print *,a
       end 
