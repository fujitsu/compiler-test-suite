      program main
      integer*1,dimension(10)::i1_a/1,2,3,4,5,6,7,8,9,10/
      integer*2,dimension(10)::i2_a/1,2,3,4,5,6,7,8,9,10/
      integer*4,dimension(10)::i4_a/1,2,3,4,5,6,7,8,9,10/

      integer*4,dimension(10)::i4_arry_1
      integer*4,dimension(10)::i4_arry_2
      integer*4,dimension(10)::i4_arry_3
      integer*4,dimension(10)::i4_arry_4
      integer m,n,err_arry(10)/10*0/,err/0/

      character(len=1),dimension(10)::c1_a/10*' '/

      n=cos(0.0)*1
      m=cos(0.0)*10

      i4_arry_1(i1_a)       = 1
      i4_arry_2(i1_a(:))    = 2
      i4_arry_3(i1_a(1:10)) = 3
      i4_arry_4(i1_a(n:m))  = i4_arry_1(i2_a) + i4_arry_2(i4_arry_1) +1

      where ( i4_arry_4(i4_a) /= 4 )
        err_arry = i4_arry_1(i1_a)
      elsewhere
        err_arry(i4_a) = 0
      endwhere

      do i=1,10
         err = err + err_arry(i)
      end do

      i4_arry_4(i2_a) = i4_arry_3(i4_arry_4)
      
      c1_a(i4_a(1:10))  = 'a'
      c1_a(i4_a(10:10)) = 'b'
      c1_a(i4_a(1:9))   = c1_a(i4_a(2:10))
      c1_a(i4_a(m:m))   = 'c'
      c1_a(i4_a(7:9:1)) = c1_a(i1_a(8:10))
      c1_a(i4_a(m))     = 'd'
      c1_a(i4_a(i2_a(4)+1 :i2_a(10)-1)) = c1_a(i1_a(6:10))
      c1_a(i4_a(10))    = 'e'
      c1_a(i4_a(i2_a(1):i2_a(5))) = c1_a(i4_a(i1_a(6):m))

      do i=1,5
         if ( c1_a(i4_a(i2_a(i))) .ne. c1_a(i4_a(i2_a(i+5))) ) then
            err=1
         end if
      end do

      if ( err .eq. 0 ) then
         write(6,*)'*** ok ***'
      else
         write(6,*)'*** ng ***'
      endif

      stop
      end
