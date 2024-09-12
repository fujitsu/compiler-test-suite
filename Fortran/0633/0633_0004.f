      program main
      type str1
        sequence
        integer*4  ,dimension(10)::i4_a/1,2,3,4,5,6,7,8,9,10/        
        character*1,dimension(10)::c1_a
      end type
      type (str1) :: A
      integer*4,dimension(10)::e_i4_a,k/1,2,3,4,5,6,7,8,9,10/,
     *                         err_arry/10*0/
      integer*4                err/0/
      character*1,dimension(10)::dat/'z','b','b','a','b',
     *                               'a','b','a','z','b'/
      equivalence (A ,e_i4_a)

      A%c1_a(A%i4_a) = ' '
      
      call sub1(e_i4_a)
      where ( A%i4_a(k) /= 0 )
        A%i4_a(k) = 0
      elsewhere
        A%i4_a(k) = k(:)
      end where

      A%c1_a(A%i4_a) = 'z'

      where ( A%c1_a(k(:)) == 'z' .and.
     *        mod(e_i4_a(k(1:10:1)) ,2) == 1 )
        A%c1_a ( A%i4_a(e_i4_a) +1 ) = 'b'
      endwhere
      call sub2(A%c1_a(3:8))
      where ( A%c1_a(A%i4_a) /= dat(A%i4_a) )
        err_arry(A%i4_a) = 1
      end where
      do i=1,10
         err = err + err_arry(i)
      end do
      if (err == 0) then
         write(6,*)'*** ok ***'
      else
         write(6,*)'*** ng ***'
      end if
      stop
      end

      subroutine sub1(e_i4_a)
      integer*4,dimension(10)::e_i4_a,pe_i4_a
      pointer (p1 ,pe_i4_a)

      p1 = loc(e_i4_a)
      e_i4_a(pe_i4_a(:)) = 0
      return
      end

      subroutine sub2(c_1a)
      character*1,dimension(6)::c_1a
      type str
        integer,dimension(6)::dim/1,2,3,4,5,6/
      end type
      type str2
       integer,dimension(6)::d
      end type
      type (str) :: A
      type (str2):: B
      integer,dimension(6)::c
      pointer (p ,B),(p1 ,c)

      p = loc (A)
      p1= loc (A%dim)
      m = cos(0.0)*2

      c_1a(A%dim(1:5:2)) = c_1a(B%d(2:6:2))
      c_1a(A%dim(B%d(c(m:6:2)))) = 'a'
      return
      end

