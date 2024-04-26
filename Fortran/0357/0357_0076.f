      character a1(10)*10,a2(10,10,10)*10
      integer*2 i1,i2,i3,i4,ia1(10),ia2(10,10,10)
      integer*4 i5,ia3(10),ia4(10,10,10)

      data a1/'abcdefghij','          ','0987654321','2 2 2 2 2 ',
     +        'afdjf f ai','aaaaaaaaaa','8+94*75=10','#j a&l   a',
     +        '||  ||  rr','ceeeeeeehh'/
      data ia1/5,3,9,6,2,7,8,10,1,4/

      character right1(10)*10/
     + 'c88aa?    ','ce88aa?   ','a  88aa?  ','afde88aa? ','c    88aa?',
     + 'c   ee88aa','ceeeeee88a','0ee 2 2 88','cee |afdj8','ceeeeeaaaa'/
      character right2(10)*10/
     + 'ce    f2ec','ce ee  2ec','cee  87cee','ceeee 2cee','c   *afcee',
     + 'ceee*7a2 2','e         ','ceeeeee2 2','c  eeeecee','ceeeeeece '/
      integer*2 right3(10)/209,876,129,650,316,740,951,420,499,600/
      integer*4 right4(10)/245,280,300,303,303,336,330,327,315,388/
      logical nogood/.false./


      do 101 i1=1,10
         do 102 i2=1,10
            do 103 i3=1,10
               a2(i2,i3,i1) = a1(i2)(:i3)//a1(i3)(:i1)//'zyyyyyyyaa'
               do 104 i4=1,10
                  a2(i3,i1,i4) = a2(i2,i3,i1)(:i3)//a1(i1)
  104          continue
  103       continue
  102    continue
         a2(8,i1,8)(1:i1) = a1(11-i1)(11-i1:10)
  101 continue

      do 201 i1=1,10
         do 202 i2=1,10
            do 203 i3=1,10
               ia2(i3,i1,i2) = ia1(ia1(ia1(ia1(ia1(ia1(ia1(i3)))))))
  203       continue
  202    continue
  201 continue

      do 301 i1=1,10
         do 302 i2=i1,10
            if (ia1(11-i2) .gt. ia2(i2,5,(i1+i2*4)/5)) then
               do 303 i3=10,i2,-2
                  ia2((i3+i1)/2,i1,i2) = ia2(i1,ia1(i2),ia1(ia1(i3)))
  303          continue
            else
               do 304 i3=ia1(i2),ia2(i1,ia1(i1),i2),ia2(ia1(i2),i2,i1)
                  if (i3 .lt. ia2(i3,i3,i3)) then
                     ia1((i1+i2*2+i3*3)/6) = ia2(i1,i2,abs(i3-i1)+1)
                  endif
  304          continue
            endif
  302    continue
  301 continue

      do 401 i1=1,10
         do 402 i2=1,10
            do 403 i3=1,10
               a2(11-i3,11-i1,11-i2)(:(i1+i2+i3)/3)
     +         = a2(ia1(i1),ia1(i2),ia1(i3))(:ia2(abs(i3-i1)+1,i3,i1))
  403       continue
  402    continue
  401 continue

      do 501 i1=1,8
         do 502 i4=i1+1,9
            do 503 i3=i4+1,10
               a2(i1,i4,11-i3)(i1+1:i4+1) = a2(i4,i3,ia1(i1))(i4:i3)
  503       continue
  502    continue
  501 continue

      do 601 i4=ia1(4),7
         do 602 i1=1,i4
            do 603 i5=ia2(i1,i4,(i1+i4)/2),i1,ia2(ia1(i1),i1,i4)
               ia2(i5,11-i1,i4+3) = (ia2(i4+1,i1,ia1(i1+1)) +
     +                               ia1(ia1(ia1(ia1(i5)))))/2
  603       continue
  602    continue
  601 continue

      do 701 i1=1,10
         a1(ia1(i1))(6:7+i1/3) = a2(i1,ia1(i1),ia1(11-i1))(i1:i1)//
     +                 a2(ia1(i1),11-i1,ia1(i1))(ia1(i1):ia1(i1))//
     +                 a1(ia2(ia1(i1),11-i1,ia1(i1)))(i1:i1)
         do 702 i2=1,10
            do 703 i4=i2,5
               a2(i2,12-2*i4,i1)(i2:i4+3) = a2(i1,i4,11-i2)
               do 704 i3=1,9,2
                  ia1(i3) = ia1(ia2(i3,i3+1,10-i3))
                  a1(ia1(ia2(ia1(i3),i3,i3))) = a1((i1+i2+i4+i3)/4)
  704          continue
  703       continue
            do 705 i5=1,10
               a1(i5) = a2(i5,ia2(i5,i1,ia1(i2)),i5)(:i5)//'88aa?'
  705       continue
  702    continue
         do 706 i4=2,10,2
            a2(i4,i4,i4) = a1(i1)(:i4)//'mu'//a1(i4)(:i1)
  706    continue
  701 continue

      do 801 i1=1,10
         do 802 i2=1,10
            do 803 i3=1,10
               ia4(i2,i1,i3) = ia2(ia1(i1),ia1((i1+i3)/2),(i2+i1)/2)
  803       continue
  802    continue
         do 804 i4=1,10
            ia3(i4) = ia1(i4)
  804    continue
  801 continue

      do 901 i1=1,9
         do 902 i2=10,i1+1,-1
            do 903 i4=1,10,i2
               ia4(i4,i1,i2) = ia4(ia3(i1),ia3(ia3(i4)),i2)
  903       continue
  902    continue
  901 continue

      do 111 i1=1,10
         do 112 i2=1,10
            do 113 i3=1,10
               a2(i1,i2,i3)(i3:) = a2(i3,i2,i1)(i3:i3)//
     +                             a2(ia4(i1,i2,i3),
     +                                ia4(i3,i1,i2),
     +                                ia4(i2,i1,i3))
  113       continue
  112    continue
         do 114 i2=i1,10
            a2((i1+i2)/2,i1,i2)(i2-i1+1:) = a1(ia4(i2,i1,i2))(i1:i2)
  114    continue
  111 continue

      do 11 i1=1,10
         if (a1(i1) .ne. right1(i1)) nogood = .true.
   11 continue
      if (nogood) then
         write (6,*) '< actual result >   ',a1
         write (6,*) '< right  result >   ',right1
      else
         write (6,*) '!!!!!! ok !!!!!!'
      endif
      nogood = .false.

      do 12 i1=1,10
         do 13 i2=1,10
            a1(i1)(i2:i2)=a2(7,i1,7)(i2:i2)
   13    continue
   12 continue
      do 14 i3=1,10
         if (a1(i3) .ne. right2(i3)) nogood = .true.
   14 continue
      if (nogood) then
         write (6,*) '< actual result >   ',a1
         write (6,*) '< right  result >   ',right2
      else
         write (6,*) '!!!!!! ok !!!!!!'
      endif
      nogood = .false.

      do 16 i1=1,10
         ia1(i1) = 0
         do 17 i2=1,10
            do 18 i3=1,10
               ia1(i1) = ia1(i1) + ia2(i1,i2,i3)
   18       continue
   17    continue
   16 continue
      do 19 i1=1,10
         if (ia1(i1) .ne. right3(i1)) nogood = .true.
   19 continue
      if (nogood) then
         write (6,*) '< actual result >   ',ia1
         write (6,*) '< right  result >   ',right3
      else
         write (6,*) '!!!!!! ok !!!!!!'
      endif
      nogood = .false.

      do 20 i1=1,10
         ia3(i1) = 0
         do 21 i2=1,10
            do 22 i3=1,10
               ia3(i1) = ia3(i1) + ia4(i1,i2,i3)
   22       continue
   21    continue
   20 continue
      do 23 i1=1,10
         if (ia3(i1) .ne. right4(i1)) nogood = .true.
   23 continue
      if (nogood) then
         write (6,*) '< actual result >   ',ia3
         write (6,*) '< right  result >   ',right4
      else
         write (6,*) '!!!!!! ok !!!!!!'
      endif
      nogood = .false.

      stop
      end
