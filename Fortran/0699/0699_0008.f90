  call s1
  print    *,'pass'
  end
  subroutine s1
      type tag3
        sequence
        character*2  ch3
      end type
      type tag2
        sequence
        type (tag3)  t3(2)
      end type
      type tag1
        sequence
        type (tag2)  t2(3)
      end type
      type (tag1)  sourceTAG
      parameter &
      (sourceTAG =(tag1( &
                         tag2((/tag3('ab'),tag3('cd')/)) )))
       character*10  moldCH, rcCH(10), rrCH(10)
       character*(*)a1,a2,a3,a4,a5,a6,a7,a8,a9,aa
       parameter (moldCH=' ')
       parameter (rcCH=transfer(sourceTAG,moldCH,10))
       parameter (a1=rcCH(1))
       parameter (a2=rcCH(2))
       parameter (a3=rcCH(3))
       parameter (a4=rcCH(4))
       parameter (a5=rcCH(5))
       parameter (a6=rcCH(6))
       parameter (a7=rcCH(7))
       parameter (a8=rcCH(8))
       parameter (a9=rcCH(9))
       parameter (aa=rcCH(10))
       rrCH=transfer(sourceTAG,moldCH,10)
       write(11,*)a1
       write(11,*)a2
       write(11,*)a3
       write(11,*)a4
       write(11,*)a5
       write(11,*)a6
       write(11,*)a7
       write(11,*)a8
       write(11,*)a9
       write(11,*)aa
       write(11,*)'RCCH=',RCCH
       write(11,*)'RRCH=',RRCH
       END

