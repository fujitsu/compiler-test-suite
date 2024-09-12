      program main
      character*1,dimension(10)::c1_a/10*' '/
      character*1,dimension(10)::c1_b/'b',' ','d',' ','f',
     *                                ' ','h',' ','j',' '/
      integer*2,dimension(10)  ::i2_a/2,3,4,5,6,7,8,9,10,11/
      integer,allocatable,dimension(:)::a_i4_a,a_i4_b,err_arry
      integer*4,dimension(10)  ::i4_a/1,2,3,4,5,6,7,8,9,10/
      integer err/0/

      c1_a(i2_a(1)-1)  = 'a'
      c1_a(i2_a(2)-1)  = 'b'
      c1_a(i2_a(3)-1)  = 'c'
      c1_a(i2_a(4)-1)  = 'd'
      c1_a(i2_a(5)-1)  = 'e'
      c1_a(i2_a(6)-1)  = 'f'
      c1_a(i2_a(7)-1)  = 'g'
      c1_a(i2_a(8)-1)  = 'h'
      c1_a(i2_a(9)-1)  = 'i'
      c1_a(i2_a(10)-1) = 'j'

      allocate (a_i4_a(10) ,a_i4_b(10))

      a_i4_a(1:9:2)  = 0
      a_i4_a(2:10:2) = 1

      do i=10,1,-1
         a_i4_b(i) = i
      end do

      where (a_i4_a == 0)
        c1_a(a_i4_b) = 'z'
      elsewhere
        c1_a(a_i4_b) = c1_a(a_i4_b)
      endwhere

      deallocate (a_i4_a ,a_i4_b)

      call sub1(c1_a(1:10))

      allocate (err_arry(10))
      err_arry=0
      where ( c1_a(i4_a) .eq. c1_b(i4_a) )
      elsewhere
        err_arry = 1
      endwhere
      do i=1,10
         err = err + err_arry(i)
      end do
      deallocate (err_arry)

      if (err == 0) then
         write(6,*)'*** ok ***'
      else
         write(6,*)'*** ng ***'
      end if
      stop
      end

      subroutine sub1(c1_a)
      character*1,dimension(10)::c1_a
      logical*1,dimension(10)::l1_a/.false.,.true.,.false.,.true.,
     *               .false.,.true.,.false.,.true.,.false.,.true./
      real,dimension(10)::r_a/1,2,3,4,5,6,7,8,9,10/
      real,dimension(9) ::r_b/1,2,3,4,5,6,7,8,9/

      where ( l1_a .eqv. .true. )
        r_a( int(r_a) ) = 0
      elsewhere
        r_a( int(r_a) ) = r_a
      end where

      c1_a(int(r_b)) = c1_a(int(r_b) + 1)
      l1_a = .not.(l1_a)
      where ( l1_a )
      elsewhere
        c1_a = ' '
      end where

      return
      end
