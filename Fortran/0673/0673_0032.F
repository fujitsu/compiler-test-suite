c
      integer   con1,con2,con3,con4,con5,
     1          s01,idim(6)
      logical*4 log1,log2,log3
      character chrdm1(06)*4,chrdm2(06)*4,chr5(5)*1
      character chr2(7)*8,chr1*4,name*30
      character chr*5,form*11
      parameter (con1=1,con2=2,con3=3,con4=4,con5=5)
      data      chrdm2 /'   1','   2','   3','   4','   5','   6'/
*
c
      read (unit=5,fmt=*)i01
      read (unit=4+1,fmt=1)i02
      read (unit=i01+con4,fmt='(i4)')i03
      read (unit=i01+con4,fmt='(i4)')i04
      read (fmt='(i4)',unit=con5) i05
      read (fmt=1,iostat=ios1,unit=i05) i06
      if (ios1) 10,20,10
  10  write(6,*)'error item01',ios1
  20  read (fmt='(i4)',unit=i06-i01,iostat=ios1,end=30) i07
      write(unit=6,fmt=*)'error item02',ios1
  30  if (ios1) 50,40,40
  40  write(6,fmt=*)'error item03',ios1
  50  write(unit=i02-i03+i01+3,fmt='(i4)')i01
      rewind  i03
      read (unit=3+con2-con3+con1,fmt='(i4)')i001
      if (i01 .ne. i001) then
         write(6,*)'error item04',i01,i001
      endif
      write(fmt='(i4)',unit=chrdm1)i01,i02,i03,i04,i05,i06
      do 60 i=1,6
        if (chrdm1(i) .ne. chrdm2(i)) then
          write(unit=6,fmt=*)'error item05',chrdm1(i),chrdm2(i),i
        endif
  60  continue
      assign 1 to s01
      write(i01,fmt=9)'(1i4)'
      rewind i01
      read (con1,19) chr5
   9   format(a5)
  19   format(5a1)
      rewind con5
      read(fmt=chr5,unit=con5) idim(1)
      read(fmt=chr5,unit=con5) idim(2)
      read(fmt=chr5,unit=con5) idim(3)
      read(fmt=chr5,unit=con5) idim(4)
      read(fmt=chr5,unit=con5) idim(5)
      read(fmt=chr5,unit=con5) idim(6)
      do 70 i=1,6
         if (idim(i) .ne. i) then
            write(6,*)'error item06',idim(i),i
         endif
   70 continue
      read (fmt=chr5,unit=idim(i05),iostat=ios1,end=90,err=80)i07
   80 write(6,*)'error item07',chr5,idim(i05),ios1
   90 rewind (unit=idim(i05),iostat=ios1,err=100)
      if (ios1) 100,110,100
  100 write(6,*)'error item08',ios1
  110 read(unit=05,fmt=s01,iostat=ios1,err=100,end=100)
      read(unit=00005,fmt=s01)
      read(unit=5,fmt='(i4)') i003
      if (i003 .ne. 003) then
         write(6,*) 'error item09',i003, 003
      endif
      print *,'item01 ----> item09  ok'
c
      read '(i4)',i004
      read '(i4)'
      read '(i4)',i006
c
      if (i004 .ne. 4   .or. i006 .ne. 6) then
         print *,'error item10',i004,4,i006,6
      endif
      rewind i05
      rewind 2
      write(i02,fmt='(a4)')'(i4)'
      rewind 2
      read (2,'(a4)') chr1
      do 120 i=1,6
 120  read chr1,idim(i)
      do 130 i=1,6
        if (idim(i) .ne. i) then
           write (6,*) 'error item11',idim(i),i
        endif
 130  continue
      rewind 5
      chr = '(i4)'
      do 140 i=1,6
 140  read chr,idim(i)
      do 150 i=1,6
         if (idim(i) .ne. i) then
           write(6,*) 'error item12',idim(i),i
         endif
 150  continue
      pr int '(a10)',' item10 ok'
      print '(a10)',' item11 ok'
      print *,'item12 ok'
*
      open (unit=7,iostat=ios1,err=999,status='new',access='direct',
     1      form='formatted',recl=i01*80,blank='zero',
     2      file='test069.n01')
      do 160 i=1,5
  160 write(unit=7,fmt='(6i4)',rec=i+1)idim(i)
      do 170 i=1,5
         read(fmt='(i4)',unit=i01+i06,rec=i+1)i001
c
         if (i001 .ne. i) then
            print *,'error item13',i001,i
         endif
  170 continue
      goto 190
  180 print *,'error item14'
  190 continue
      goto 210
  999 print *,'error','??????????'
      goto 210
  200 print *,'error item14'
  210 inquire (file='test069.n01',iostat=ios1,err=999,
     1         exist=log1,opened=log2,number=i001,named=log3,name=name,
     2         access=chr2(i01),sequential=chr2(i02),direct=chr2(3),
     3         form=form,formatted=chr2(5),unformatted=chr2(6),
     4         recl=i002,nextrec=i003,blank=chr2(7))
      if (ios1.ne.0) print *,'iostat      = ',ios1
      if (log1.neqv..true.) print *,'exist       = ',log1
      if (log2.neqv..true.) print *,'opened      = ',log2
      if (i001.ne.7) print *,'number      = ',i001
      if (log3.neqv..true.) print *,'named       = ',log3
      if (name.ne.'test069.n01') print *,'name        = ',name
#if defined(_MANAGED)
      if (chr2(i01).ne.'DIRECT') print *,'access      = ',chr2(i01)
      if (chr2(i02).ne.'NO') print *,'sequential  = ',chr2(i02)
      if (chr2(3).ne.'YES') print *,'direct      = ',chr2(3)
      if (form.ne.'FORMATTED') print *,'form        = ',form
      if (chr2(5*1).ne.'YES') print *,'formatted   = ',chr2(5*1)
      if (chr2(i06*i01).ne.'NO') print *,'unformatted = ',chr2(i06*i01)
      if (chr2(7).ne.'ZERO') print *,'blank       = ',chr2(7)
#else
      if (chr2(i01).ne.'direct') print *,'access      = ',chr2(i01)
      if (chr2(i02).ne.'no') print *,'sequential  = ',chr2(i02)
      if (chr2(3).ne.'yes') print *,'direct      = ',chr2(3)
      if (form.ne.'formatted') print *,'form        = ',form
      if (chr2(5*1).ne.'yes') print *,'formatted   = ',chr2(5*1)
      if (chr2(i06*i01).ne.'no') print *,'unformatted = ',chr2(i06*i01)
      if (chr2(7).ne.'zero') print *,'blank       = ',chr2(7)
#endif
      if (i002.ne.80) print *,'recl        = ',i002
      if (i003.ne.7) print *,'nextrec     = ',i003
   1  format(i4)
      close (unit=i01*7,iostat=ios1,err=200,status='delete')
      write (6,*) '** iostat=0 ok ok**'
      if (ios1.ne.0) write (6,*) 'iostat=',ios1
      end
