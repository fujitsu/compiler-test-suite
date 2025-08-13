      program main
      type ty1
        sequence
          integer i
      end type
      type ty2
        sequence
          integer a(10)
      end type
      type (ty1) :: sts1,sts2(5)
      type (ty2) :: sta1,sta2
      integer iarr(10),iarr2(10)
      equivalence (sts1,sts2)
      equivalence (sts2,iarr(5))
      equivalence (sta1,sta2)
      equivalence (sta2,iarr2(1))
      sts1%i=1
      if (sts2(1)%i.ne.iarr(5)) print *,'err  1'
      rewind 21
      write (21,'(3I2)') 1,2,3
      rewind 21
      read  (21,'(3I2)') iarr(6),sts1%i,sta1%a(sts2(1)%i+1)
      rewind 21
      rewind 6
      if (sts2(2)%i.ne.1) print *,'err  2'
      if (sts1%i .ne.2) print *,'err  3'
      if (sta2%a(3).ne.3) print *,'err  4'
      call sub1()
      call sub2()
      call sub3()
      call sub4()

      print *,'pass'
      end

      subroutine sub1()
      type ty1
        integer a(10)
        integer i
      endtype
      type ty2 
        typ e (ty1) :: st1
      endtype
      type ty3
        type (ty1) :: st2(10)
      endtype
      type w
        integer endtype
      endtype
      type type
        type (w) endtype
      endtype
      type (type) :: endtype
      endtype%endtype%endtype=1
      if (endtype%endtype%endtype.ne.1) print *,'sub1 err  1' 
      end
      subroutine sub2()
      implicit integer*1 (i-j)
      parameter (
     -  i 1 =O'01',i 2 =O'02',i 3 =O'03',i 4 =O'04',i 5 =O'05'
     - ,i 6 =O'06',i 7 =O'07',i 8 =O'10',i 9 =O'11',i10 =O'12'
     - ,i11 =O'13',i12 =O'14',i13 =O'15',i14 =O'16',i15 =O'17'
     - ,i16 =O'20',i17 =O'21',i18 =O'22',i19 =O'23',i20 =O'24'
     - ,i255 =O'377'
     -   )
      data j 1  /O'01'/
      data j 2  /O'02'/
      data j 3  /O'03'/
      data j 4  /O'04'/
      data j 5  /O'05'/
      data j 6  /O'06'/
      data j 7  /O'07'/
      data j 8  /O'10'/
      data j 9  /O'11'/
      data j10  /O'12'/
      data j11  /O'13'/
      data j12  /O'14'/
      data j13  /O'15'/
      data j14  /O'16'/
      data j15  /O'17'/
      data j16  /O'20'/
      data j17  /O'21'/
      data j18  /O'22'/
      data j19  /O'23'/
      data j20  /O'24'/
      data j255  /O'377'/

      if (i 1 .ne. j 1 ) print *,'sub2 err  1' 
      if (i 2 .ne. j 2 ) print *,'sub2 err  2' 
      if (i 3 .ne. j 3 ) print *,'sub2 err  3' 
      if (i 4 .ne. j 4 ) print *,'sub2 err  4' 
      if (i 5 .ne. j 5 ) print *,'sub2 err  5' 
      if (i 6 .ne. j 6 ) print *,'sub2 err  6' 
      if (i 7 .ne. j 7 ) print *,'sub2 err  7' 
      if (i 8 .ne. j 8 ) print *,'sub2 err  8' 
      if (i 9 .ne. j 9 ) print *,'sub2 err  9' 
      if (i10 .ne. j10 ) print *,'sub2 err 10' 
      if (i11 .ne. j11 ) print *,'sub2 err 11' 
      if (i12 .ne. j12 ) print *,'sub2 err 12' 
      if (i13 .ne. j13 ) print *,'sub2 err 13' 
      if (i14 .ne. j14 ) print *,'sub2 err 14' 
      if (i15 .ne. j15 ) print *,'sub2 err 15' 
      if (i16 .ne. j16 ) print *,'sub2 err 16' 
      if (i17 .ne. j17 ) print *,'sub2 err 17' 
      if (i18 .ne. j18 ) print *,'sub2 err 18' 
      if (i19 .ne. j19 ) print *,'sub2 err 19' 
      if (i20 .ne. j20 ) print *,'sub2 err 20' 
      if (i255.ne. j255) print *,'sub2 err 21' 
      if (i255.ne. -1) print *,'sub2 err 22' 
      if (-1.ne. j255) print *,'sub2 err 23' 
      end
      subroutine sub3()
      implicit integer*2 (i-j)
      parameter (
     -  i 1 =O'01',i 2 =O'02',i 3 =O'03',i 4 =O'04',i 5 =O'05'
     - ,i 6 =O'06',i 7 =O'07',i 8 =O'10',i 9 =O'11',i10 =O'12'
     - ,i11 =O'13',i12 =O'14',i13 =O'15',i14 =O'16',i15 =O'17'
     - ,i16 =O'20',i17 =O'21',i18 =O'22',i19 =O'23',i20 =O'24'
     - ,i255 =O'377',i32767=O'77777'
     -   )
      data j 1  /O'01'/
      data j 2  /O'02'/
      data j 3  /O'03'/
      data j 4  /O'04'/
      data j 5  /O'05'/
      data j 6  /O'06'/
      data j 7  /O'07'/
      data j 8  /O'10'/
      data j 9  /O'11'/
      data j10  /O'12'/
      data j11  /O'13'/
      data j12  /O'14'/
      data j13  /O'15'/
      data j14  /O'16'/
      data j15  /O'17'/
      data j16  /O'20'/
      data j17  /O'21'/
      data j18  /O'22'/
      data j19  /O'23'/
      data j20  /O'24'/
      data j255  /O'377'/
      data j32767/O'77777'/
      data jm32767/O'177777'/

      if (i 1 .ne. j 1 ) print *,'sub3 err  1' 
      if (i 2 .ne. j 2 ) print *,'sub3 err  2' 
      if (i 3 .ne. j 3 ) print *,'sub3 err  3' 
      if (i 4 .ne. j 4 ) print *,'sub3 err  4' 
      if (i 5 .ne. j 5 ) print *,'sub3 err  5' 
      if (i 6 .ne. j 6 ) print *,'sub3 err  6' 
      if (i 7 .ne. j 7 ) print *,'sub3 err  7' 
      if (i 8 .ne. j 8 ) print *,'sub3 err  8' 
      if (i 9 .ne. j 9 ) print *,'sub3 err  9' 
      if (i10 .ne. j10 ) print *,'sub3 err 10' 
      if (i11 .ne. j11 ) print *,'sub3 err 11' 
      if (i12 .ne. j12 ) print *,'sub3 err 12' 
      if (i13 .ne. j13 ) print *,'sub3 err 13' 
      if (i14 .ne. j14 ) print *,'sub3 err 14' 
      if (i15 .ne. j15 ) print *,'sub3 err 15' 
      if (i16 .ne. j16 ) print *,'sub3 err 16' 
      if (i17 .ne. j17 ) print *,'sub3 err 17' 
      if (i18 .ne. j18 ) print *,'sub3 err 18' 
      if (i19 .ne. j19 ) print *,'sub3 err 19' 
      if (i20 .ne. j20 ) print *,'sub3 err 20' 
      if (i255.ne. j255) print *,'sub3 err 21' 
      if (i255.ne. 255) print *,'sub3 err 22' 
      if (255.ne. j255) print *,'sub3 err 23' 
      if (i32767.ne. j32767) print *,'sub3 err 24' 
      if (32767.ne. j32767) print *,'sub3 err 25' 
      if (i32767.ne. 32767) print *,'sub3 err 26' 
      if (jm32767.ne. -1) print *,'sub3 err 27' 
      end
      subroutine sub4()
      implicit integer*4 (i-j)
      parameter (
     -  i 1 =O'01',i 2 =O'02',i 3 =O'03',i 4 =O'04',i 5 =O'05'
     - ,i 6 =O'06',i 7 =O'07',i 8 =O'10',i 9 =O'11',i10 =O'12'
     - ,i11 =O'13',i12 =O'14',i13 =O'15',i14 =O'16',i15 =O'17'
     - ,i16 =O'20',i17 =O'21',i18 =O'22',i19 =O'23',i20 =O'24'
     - ,i255 =O'377',i32767=O'77777'
     -   )
      parameter (ii=O'777777777777777777777777777777777777777')
      parameter (ij=O'000000000000000000000000000000000000001')
      data j 1  /O'01'/
      data j 2  /O'02'/
      data j 3  /O'03'/
      data j 4  /O'04'/
      data j 5  /O'05'/
      data j 6  /O'06'/
      data j 7  /O'07'/
      data j 8  /O'10'/
      data j 9  /O'11'/
      data j10  /O'12'/
      data j11  /O'13'/
      data j12  /O'14'/
      data j13  /O'15'/
      data j14  /O'16'/
      data j15  /O'17'/
      data j16  /O'20'/
      data j17  /O'21'/
      data j18  /O'22'/
      data j19  /O'23'/
      data j20  /O'24'/
      data j255  /O'377'/
      data j32767/O'77777'/

      if (i 1 .ne. j 1 ) print *,'sub4 err  1' 
      if (i 2 .ne. j 2 ) print *,'sub4 err  2' 
      if (i 3 .ne. j 3 ) print *,'sub4 err  3' 
      if (i 4 .ne. j 4 ) print *,'sub4 err  4' 
      if (i 5 .ne. j 5 ) print *,'sub4 err  5' 
      if (i 6 .ne. j 6 ) print *,'sub4 err  6' 
      if (i 7 .ne. j 7 ) print *,'sub4 err  7' 
      if (i 8 .ne. j 8 ) print *,'sub4 err  8' 
      if (i 9 .ne. j 9 ) print *,'sub4444r  9' 
      if (i10 .ne. j10 ) print *,'sub4 err 10' 
      if (i11 .ne. j11 ) print *,'sub4 err 11' 
      if (i12 .ne. j12 ) print *,'sub4 err 12' 
      if (i13 .ne. j13 ) print *,'sub4 err 13' 
      if (i14 .ne. j14 ) print *,'sub4 err 14' 
      if (i15 .ne. j15 ) print *,'sub4 err 15' 
      if (i16 .ne. j16 ) print *,'sub4 err 16' 
      if (i17 .ne. j17 ) print *,'sub4 err 17' 
      if (i18 .ne. j18 ) print *,'sub4 err 18' 
      if (i19 .ne. j19 ) print *,'sub4 err 19' 
      if (i20 .ne. j20 ) print *,'sub4 err 20' 
      if (i255.ne. j255) print *,'sub4 err 21' 
      if (i255.ne. 255) print *,'sub4 err 22' 
      if (255.ne. j255) print *,'sub4 err 23' 
      if (i32767.ne. j32767) print *,'sub4 err 24' 
      if (32767.ne. j32767) print *,'sub4 err 25' 
      if (i32767.ne. 32767) print *,'sub4 err 26' 
      if (ii.ne. -1) print *,'sub4 err 27' 
      if (ij.ne. 1) print *,'sub4 err 28' 
      end
