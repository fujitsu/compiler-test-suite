      integer(kind=4)::error/0/
      integer(kind=4)::fun1,fun2,fun3,fun4

      error = error + fun1()
      error = error + fun2()
      error = error + fun3()
      error = error + fun4()

      if(error /= 0) then
         write(6,*) '*** ng ?? ***'
      else
         write(6,*) '*** ok    ***'
      endif
      stop
      end
!
      integer(kind=4) function fun1() result(err)
      logical(kind=1)::L01a(1,1,10)=.true.
      complex(kind=4)::c08a(1,1,10)=(0._4,0._4)
      integer(kind=4)::check

      where(L01a)
        c08a = c08a + EXP(-(17,0.0_4))
      endwhere
      err = check(c08a)
      end
!
      integer(kind=4) function fun2() result(err)
      logical(kind=1)::L01a(1,1,10)=.true.
      complex(kind=4)::c08a(1,1,10)=(0._4,0._4)
      integer(kind=4)::check

      where(L01a)
        c08a = EXP(-(17,0.0_4))
      endwhere
      err = check(c08a)
      end
!
      integer(kind=4) function fun3() result(err)
      logical(kind=1)::L01a(1,1,10)=.true.
      complex(kind=4)::c08a(1,1,10)=(0._4,0._4)
      real   (kind=4)::r04a/0._4/
      integer(kind=4)::check

      where(L01a)
        c08a = EXP(-(17,0.0_4)) + r04a
      endwhere
      err = check(c08a)
      end
!
      integer(kind=4) function fun4() result(err)
      logical(kind=1)::L01a(1,1,10)=.true.
      complex(kind=4)::c08a(1,1,10)=(0._4,0._4),c08b(1,1,10)
      integer(kind=4)::check

      where(L01a)
        c08b(:,:,10:1:-1) = CMPLX(0._4,0._4)
        c08a = EXP(-(17,0.0_4)) + c08b
      endwhere
      err = check(c08a)
      end
!
      integer(kind=4) function check(c) result(err)
      complex(kind=4)::c(1,1,10),t(1,1,10)
      integer(kind=4),save::count=0

      count = count +1
      err = 0
      do i=1,10
         t(1,1,i) = EXP(-(17,0.0_4))
      enddo
      do i=1,10
         if(abs(t(1,1,i) - c(1,1,i)) .gt. 1.0D-14) then
            err = 1
         endif
      enddo
      if(err /= 0) then
         write(6,*) 'error at fun',count
         write(6,*) 'true value :',t
         write(6,*) 'calc value :',t
      endif
      end
