      program main
      call sub1001
      call sub1002
      call sub1003
      call sub2309
      stop
      end
      subroutine sub1001
      real*4 ra(10)/10*1./,rb(10)/10*1./
      do 10 i=1,10
        ra(i)=rb(i)+1.
 10   continue
      write(6,*) 'ra=',ra
      write(6,*) 'rb=',rb
      return
      end
      subroutine sub1002
      real*4 ra(10)/10*1./,rb(10)/10*1./
      do 10 i=1,10
        if(i.eq.5.or.i.eq.7) then
          ra(i)=rb(i)+1.
        endif
 10   continue
      write(6,*) 'ra=',ra
      write(6,*) 'rb=',rb
      return
      end
      subroutine sub1003
      real*4 ra(10)/10*1./,rb(10)/10*1./
      integer * 4 l(10)
      data l/1,2,3,4,5,6,7,8,9,10/
      do 10 i=1,10
        if(i.ge.6)then
            ra(l(i))=rb(l(i))+1.
        endif
 10   continue
      write(6,*) 'ra=',ra
      return
      end
      subroutine sub2309
      real*4 ra(10)/10*1./,rb(10)/10*1./
      integer*4 l(10)
      data l/1,2,3,4,5,6,7,8,9,10/
      do 10 i=1,10
        if(i.ge.6)then
            ra(l(i))=rb(l(i))+1.
        endif
 10   continue
      write(6,*) 'ra=',ra
      write(6,*) 'rb=',rb
      return
      end
