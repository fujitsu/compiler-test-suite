         dimension ia(10,10),ib(10)
         write(10,*) 999,999,999,1,2,3,4,5,6,7
         write(10,*) 888,888,888,888,888,1,2,3,4,5
         write(10,*) 1,2,3,4,5,6,7,8,9,10
         write(10,*) 10,9,8,7,6,5,4,3,2,1
         write(10,*) 1,2,2,555,555,555,7,8,9,10
         write(10,*) 444,444,444,444,444,444,7,8,9,10
         write(10,*) 333,333,333,333,333,333,0,333,0,0
         write(10,*) 222,222,222,9,8,222,222,6,4,2
         write(10,*) 4,2,111,111,111,2,111,111,6,4
         write(10,*) 0,0,0,0,0,0,0,0,0,0
         rewind 10
         read(10,*) ia
         rewind 10
         write(6,*) '   test               '
         write(20,*) ' 10*999  '
         write(20,*) ' 2*,,1,2,3,4,5,6,7  '
         write(20,*) ' 10*888  '
         write(20,*) ' 3*,,,1,2,3,4,5     '
         write(20,*) ' 10*777  '
         write(20,*) ' 1*1,2,3,4,5,6,7,8,9,10   '
         write(20,*) ' 10*666  '
         write(20,*) ' 10,9,8,7,6,5,4,3,2,1  '
         write(20,*) ' 10*555  '
         write(20,*) ' 1,2*2,1*,,,7,8,9,10     '
         write(20,*) ' 10*444  '
         write(20,*) ' ,,,3*,7,8,9,10     '
         write(20,*) ' 10*333  '
         write(20,*) ' ,5*,0,,2*0         '
         write(20,*) ' 10*222  '
         write(20,*) ' ,,,1*9,8,2*,6,4,2   '
         write(20,*) ' 10*111  '
         write(20,*) ' 4,2,3*,2,2*,6,4  '
         write(20,*) ' 10*000  '
         write(20,*) ' 10*0               '
         rewind 20
         do 500 i=1,10
         read(20,*) ib
         read(20,*) ib
         ierr=0
         do 400 k=1,10
         if(ia(k,i).eq.ib(k)) go to 400
         write(6,*) ' **error** i=',i,' k=',k,' read= ',ib(k),
     1    ' c=',ia(1,k)
         ierr=1
 400     continue
         if(ierr.eq.0) go to 430
         write(6,*) ' **error**  test no ',i
         go to 500
 430     write(6,*) '  **ok**    test no ',i
 500     continue
         write(6,*) '                        end  '
         stop
         end