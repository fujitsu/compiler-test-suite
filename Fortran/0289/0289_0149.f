      program main
      integer a_initial(10)/10*0/,a_final(10)/10*0/
      integer a_increment(10)/10*0/
      integer i,j,k
      integer right_initial(10)  /3,5,7,9,11,13,15,17,19,21/
      integer right_final(10)    /40,18,16,14,12,10,8,6,4,2/
      integer right_increment(10)/40,12,24,14,26,14,28,14,28,16/
      logical ok_or_ng/.true./
      write(6,*) ' '
      write(6,*) ' #### start  #### '
      k=1
      do 20 j=1,10
        do 10 i=k,10
          a_initial(i)=a_initial(i)+1
   10 continue
        k=k+1
   20 continue

      k=1
      do 40 j=1,10
        do 30 i=1,k
          a_final(i)=a_final(i)+1
   30 continue
        k=k+1
   40 continue
      k=1
      do 60 j=1,10
        do 50 i=1,10,k
          a_increment(i)=a_increment(i)+1
   50 continue
        k=k+1
   60 continue
      do 70 k=1,10
        do 80 i=k,10
          a_initial(i)=a_initial(i)+1
   80 continue
        do 90 i=1,k
          a_final(i)=a_final(i)+1
   90 continue
        do 100 i=1,10,k
          a_increment(i)=a_increment(i)+1
  100 continue
   70 continue
      do 110 k=1,10
        do 120 i=i,10
          a_initial(i)=a_initial(i)+1
  120 continue
        i=1
        do 130 i=1,i
          a_final(i)=a_final(i)+1
  130 continue
        do 140 i=1,10,i
          a_increment(i)=a_increment(i)+1
  140 continue
  110 continue


      k=1
      do 150 j=1,10
        do 160 i=k,10
          a_initial(i)=a_initial(i)+1
          k=k+1
  160 continue
  150 continue

      k=1
      do 170 j=1,10
        do 180 i=1,k
          a_final(i)=a_final(i)+1
          k=k
  180 continue
  170 continue
      k=1
      do 190 j=1,10
        do 200 i=1,10,k
          a_increment(i)=a_increment(i)+1
  200 continue
  190 continue


      do i=1,10
        if (a_initial(i) .ne. right_initial(i)) then
          write(6,*) 'result  ',a_initial
          write(6,*) 'right   ',right_initial
          ok_or_ng = .false.
          goto  999
        endif
      enddo
  999 continue
      do i=1,10
        if (a_final(i) .ne. right_final(i)) then
          write(6,*) 'result  ',a_final
          write(6,*) 'right   ',right_final
          ok_or_ng = .false.
          goto 998
        endif
      enddo
  998 continue
      do i=1,10
        if (a_increment(i) .ne. right_increment(i)) then
          write(6,*) 'result  ',a_increment
          write(6,*) 'right   ',right_increment
          ok_or_ng = .false.
          goto 997
        endif
      enddo
  997 continue
      if (ok_or_ng) then
        write(6,*) ' **** ok **** '
      else
        write(6,*) ' .... ng .... '
      endif
      write(6,*) ' #### end    #### '
      stop
      end
