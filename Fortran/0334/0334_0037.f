
      program main
      implicit integer(kind=KIND(HUGE(i))) (f)
      integer(kind=KIND(0))::error=0
      integer(kind=8)        ::ext_i08a(10),arg_i08a(10)
      complex(kind=8)        ::ext_c16a(10),arg_c16a(10)
      character(kind=1,len=4)::ext_ch4a(10),arg_ch4a(10)
      common /com1/ext_i08a
     &      ,/com2/ext_c16a
     &      ,/com3/ext_ch4a

      error=
     &      fun01()
     &     +fun02()
     &     +fun03(arg_i08a)
     &     +fun04()
     &     +fun05()
     &     +fun06(arg_c16a)
     &     +fun07()
     &     +fun08()
     &     +fun09(arg_ch4a)


      if(error/=0) then
         write(6,*) '*** ng ***'
      else
         write(6,*) '*** ok ***'
      endif
      stop
      end
      integer(kind=KIND(1)) function fun01() result(error)
      integer(kind=8)::i08a(10)

      interface
        integer(kind=KIND(-1)) function funchk(no,i08,c16,ch4)
        integer(kind=8)        ,optional,intent(in)::i08(10)
        complex(kind=8)        ,optional,intent(in)::c16(10)
        character(kind=1,len=4),optional,intent(in)::ch4(10)
        end function
      endinterface

      call init_i08(i08a)
      i08a(i08a)=i08a
      error=funchk(1,i08=i08a)
      end
      integer(kind=KIND(1)) function fun02() result(error)
      integer(kind=8)::i08a(10)

      interface
        integer(kind=KIND(-1)) function funchk(no,i08,c16,ch4)
        integer(kind=8)        ,optional,intent(in)::i08(10)
        complex(kind=8)        ,optional,intent(in)::c16(10)
        character(kind=1,len=4),optional,intent(in)::ch4(10)
        end function
      endinterface
      common /com1/i08a

      call init_i08(i08a)
      i08a(i08a)=i08a
      error=funchk(2,i08=i08a)
      end
      integer(kind=KIND(1)) function fun03(i08a) result(error)
      integer(kind=8)::i08a(10)

      interface
        integer(kind=KIND(-1)) function funchk(no,i08,c16,ch4)
        integer(kind=8)        ,optional,intent(in)::i08(10)
        complex(kind=8)        ,optional,intent(in)::c16(10)
        character(kind=1,len=4),optional,intent(in)::ch4(10)
        end function
      endinterface

      call init_i08(i08a)
      i08a(i08a)=i08a
      error=funchk(3,i08=i08a)
      end
      integer(kind=KIND(1)) function fun04() result(error)
      complex(kind=8)::c16a(10)

      interface
        integer(kind=KIND(-1)) function funchk(no,i08,c16,ch4)
        integer(kind=8)        ,optional,intent(in)::i08(10)
        complex(kind=8)        ,optional,intent(in)::c16(10)
        character(kind=1,len=4),optional,intent(in)::ch4(10)
        end function
      endinterface

      call init_c16(c16a)
      c16a(INT(c16a))=c16a
      error=funchk(4,c16=c16a)
      end
      integer(kind=KIND(1)) function fun05() result(error)
      complex(kind=8)::c16a(10)

      interface
        integer(kind=KIND(-1)) function funchk(no,i08,c16,ch4)
        integer(kind=8)        ,optional,intent(in)::i08(10)
        complex(kind=8)        ,optional,intent(in)::c16(10)
        character(kind=1,len=4),optional,intent(in)::ch4(10)
        end function
      endinterface
      common /com2/c16a

      call init_c16(c16a)
      c16a(INT(c16a))=c16a
      error=funchk(5,c16=c16a)
      end
      integer(kind=KIND(1)) function fun06(c16a) result(error)
      complex(kind=8)::c16a(10)

      interface
        integer(kind=KIND(-1)) function funchk(no,i08,c16,ch4)
        integer(kind=8)        ,optional,intent(in)::i08(10)
        complex(kind=8)        ,optional,intent(in)::c16(10)
        character(kind=1,len=4),optional,intent(in)::ch4(10)
        end function
      endinterface

      call init_c16(c16a)
      c16a(INT(c16a))=c16a
      error=funchk(6,c16=c16a)
      end
      integer(kind=KIND(1)) function fun07() result(error)
      character(kind=1,len=4)::ch4a(10)

      interface
        integer(kind=KIND(-1)) function funchk(no,i08,c16,ch4)
        integer(kind=8)        ,optional,intent(in)::i08(10)
        complex(kind=8)        ,optional,intent(in)::c16(10)
        character(kind=1,len=4),optional,intent(in)::ch4(10)
        end function
      endinterface

      call init_ch4(ch4a)
      ch4a(ICHAR(ch4a(:)(1:1))-ICHAR('a'))=ch4a
      error=funchk(7,ch4=ch4a)
      end
      integer(kind=KIND(1)) function fun08() result(error)
      character(kind=1,len=4)::ch4a(10)

      interface
        integer(kind=KIND(-1)) function funchk(no,i08,c16,ch4)
        integer(kind=8)        ,optional,intent(in)::i08(10)
        complex(kind=8)        ,optional,intent(in)::c16(10)
        character(kind=1,len=4),optional,intent(in)::ch4(10)
        end function
      endinterface
      common /com3/ch4a

      call init_ch4(ch4a)
      ch4a(ICHAR(ch4a(:)(1:1))-ICHAR('a'))=ch4a
      error=funchk(8,ch4=ch4a)
      end
      integer(kind=KIND(1)) function fun09(ch4a) result(error)
      character(kind=1,len=4)::ch4a(10)

      interface
        integer(kind=KIND(-1)) function funchk(no,i08,c16,ch4)
        integer(kind=8)        ,optional,intent(in)::i08(10)
        complex(kind=8)        ,optional,intent(in)::c16(10)
        character(kind=1,len=4),optional,intent(in)::ch4(10)
        end function
      endinterface

      call init_ch4(ch4a)
      ch4a(ICHAR(ch4a(:)(1:1))-ICHAR('a'))=ch4a
      error=funchk(9,ch4=ch4a)
      end
      subroutine init_i08(i08)
      integer(kind=8),intent(out)::i08(10)
      i08=(/(i,i=10,1,-1)/)
      return
      end
      subroutine init_c16(c16)
      complex(kind=8),intent(out)::c16(10)
      c16=(/(cmplx(DBLE(i),DBLE(-i)),i=10,1,-1)/)
      return
      end
      subroutine init_ch4(ch4)
      character(kind=1,len=4),intent(out)::ch4(10)
      ch4=(/(CHAR(ICHAR('a')+i)//' '//CHAR(ICHAR('z')-i),i=10,1,-1)/)
      return
      end
      integer(kind=KIND(-1)) function funchk(no,i08,c16,ch4)
     &                      result(error)
      integer(kind=8)        ,optional,intent(in)::i08(10)
      complex(kind=8)        ,optional,intent(in)::c16(10)
      character(kind=1,len=4),optional,intent(in)::ch4(10)
      integer(kind=8)        ,allocatable,save   ::t_i08(:)
      complex(kind=8)        ,allocatable,save   ::t_c16(:)
      character(kind=1,len=4),allocatable,save   ::t_ch4(:)
      
      if(PRESENT(i08)) then
         if(.not.ALLOCATED(t_i08)) then
            allocate(t_i08(1:10))
            call init_i08(t_i08)
         endif
         error=SIZE(PACK(i08,i08.ne.t_i08(10:1:-1)))
         if(error/=0) then
            write(6,*) 'error at func',no
            write(6,*) 'true value',t_i08(10:1:-1)
            write(6,*) 'calc value',  i08
         endif
         return
      endif
      if(PRESENT(c16)) then
         if(.not.ALLOCATED(t_c16)) then
            allocate(t_c16(1:10))
            call init_c16(t_c16)
         endif
         error=SIZE(PACK(c16,c16.ne.t_c16(10:1:-1)))
         if(error/=0) then
            write(6,*) 'error at func',no
            write(6,*) 'true value',t_c16(10:1:-1)
            write(6,*) 'calc value',  c16
         endif
         return
      endif
      if(PRESENT(ch4)) then
         if(.not.ALLOCATED(t_ch4)) then
            allocate(t_ch4(1:10))
            call init_ch4(t_ch4)
         endif
         error=SIZE(PACK(ch4,ch4.ne.t_ch4(10:1:-1)))
         if(error/=0) then
            write(6,*) 'error at func',no
            write(6,*) 'true value',t_ch4(10:1:-1)
            write(6,*) 'calc value',  ch4
         endif
         return
      endif
      end
