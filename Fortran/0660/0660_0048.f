      call ss1
      print *,' *** pass ***'
      end
      subroutine ss1
      interface  check
        subroutine subi1(comp,res,type,spell)
          integer*1  comp
          integer(kind=4)  res,type
          character*(*)    spell
        end subroutine 
        subroutine subi2(comp,res,type,spell)
          integer*2  comp
          integer(kind=4)  res,type
          character*(*)    spell
        end subroutine 
        subroutine subi4(comp,res,type,spell)
          integer*4  comp
          integer(kind=4)  res,type
          character*(*)    spell
        end subroutine 
        subroutine subi8(comp,res,type,spell)
          integer*8  comp
          integer(kind=4)  res,type
          character*(*)    spell
        end subroutine 
      end interface
      integer*4  res
      integer*1  i11,i12,i13
      integer*2  i21,i22,i23
      integer*4  i41,i42,i43
      integer*8  i81,i82,i83
      parameter  (i11=14,i12=1,i13=3)
      parameter  (i21=14,i22=1,i23=3)
      parameter  (i41=14,i42=1,i43=3)
      parameter  (i81=14,i82=1,i83=3)
      res = ibits(14,1,3)
      call check(ibits(i11,i12,i13),res,1,'ibits')
      call check(ibits(i11,i12,i23),res,2,'ibits')
      call check(ibits(i21,i22,i23),res,3,'ibits')
      call check(ibits(i41,i12,i23),res,4,'ibits')
      call check(ibits(i41,i42,i43),res,5,'ibits')
      call check(ibits(14,1,3),res,6,'ibits')
      call check(ibits(i81,i42,i23),res,7,'ibits')
      call check(ibits(i81,i82,i83),res,8,'ibits')
      call check(ibits(i41,i42,i83),res,9,'ibits')
      call check(ibits(i41,i82,i83),res,10,'ibits')
      end

      subroutine subi1(comp,res,type,spell)
      integer(kind=1)  comp
      integer(kind=4)  res,type
      character*(*)    spell
        if (comp.ne.res) then
          print *,'error',type,' : func = ',spell,'  type = 1 ' 
          print *,'  NG = ',comp,'  OK = ',res
        endif
      end

      subroutine subi2(comp,res,type,spell)
      integer(kind=2)  comp
      integer(kind=4)  res,type
      character*(*)    spell
        if (comp.ne.res) then
          print *,'error',type,' : func = ',spell,'  type = 2 '
          print *,'  NG = ',comp,'  OK = ',res
        endif
      end

      subroutine subi4(comp,res,type,spell)
      integer(kind=4)  comp
      integer(kind=4)  res,type
      character*(*)    spell
        if (comp.ne.res) then
          print *,'error',type,' : func = ',spell,'  type = 4 '
          print *,'  NG = ',comp,'  OK = ',res
        endif
      end

      subroutine subi8(comp,res,type,spell)
      integer(kind=8)  comp
      integer(kind=4)  res,type
      character*(*)    spell
        if (comp.ne.res) then
          print *,'error',type,' : func = ',spell,'  type = 8 '
          print *,'  NG = ',comp,'  OK = ',res
        endif
      end
