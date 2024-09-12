      program main
      character*1,allocatable,dimension(:,:)::c1_a
      logical*1  ,allocatable,dimension(:,:)::f1_a
      integer*4              ,dimension(5)::i4_a
      common /blk/i4_a
      integer*4:: error=0
      character*1 c1_t(5,5) /'b','b','a','b','b'
     &                      ,'b','a','b','a','a'
     &                      ,'a','b','a','b','b'
     &                      ,'b','a','b','a','a'
     &                      ,'b','b','a','b','b'/

      allocate (c1_a(5,5) ,f1_a(5,5))

      do i=1,5
         i4_a(i) = i
      end do

      c1_a(i4_a,i4_a) = ' '
      f1_a = .false.

      do l=1,5
         do i=1,5
            if (mod(i,2) /= 0) then
               f1_a(i,1:5:2) = .true.
            else
               f1_a(i,2:5:2) = .true.
            endif
         end do
      end do

      do i=1,5
         where ( f1_a(i4_a(i) ,i4_a(1:5)) .eqv. .true. )
            c1_a(i4_a(i) ,i4_a(:)) = 'a'
         elsewhere
            c1_a(i4_a(i) ,i4_a) = 'b'
         end where
      end do

      call sub1(c1_a ,5)

      do j=1,5
         do i=1,5
            if(c1_a(i,j) /= c1_t(i,j)) then
               error=error+1
            endif
         enddo
      enddo
      if(error .eq. 0) then
         write(6,*) '*** ok ***'
      else
         write(6,*) '*** ng ***'
         write(6,*) 'true value : c1_t(5,5)=',c1_t
         write(6,*) 'clac value : c1_a(5,5)=',c1_a
      endif
      deallocate(f1_a,c1_a)
      stop
      end

      subroutine sub1(c1_a ,m)
      character*1,dimension(m,m)::c1_a
      integer*4  ,dimension(m)::p_i4_a
      integer*4  ,dimension(5)::i4_a
      common /blk/i4_a
      pointer (p,p_i4_a)

      p = loc(i4_a)
      
      c1_a(:,i4_a(m-4:m-4:m-4)) = c1_a(1:m,i4_a(m-3:m-3))
      c1_a(p_i4_a(1:5),5)       = c1_a(m,p_i4_a) 
      c1_a(5 ,i4_a(1:m))        = c1_a(1:m,1)
      c1_a(i4_a(:) ,p_i4_a(i4_a(int(cos(0.0)*1)))) =
     &                            c1_a(i4_a(p_i4_a(1)) ,i4_a(1:m:1))
      return
      end
