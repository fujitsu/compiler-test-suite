      call s(n)
      call s2(n)
      call s23(n)
      call s234(n)
      call s2345(n)
      call s23456(n)
      call s234567(n)
      call s2345678(n)
      call s23456789(n)
      call s234567890(n)
      call s2345678901(n)
      call s23456789012(n)
      call s234567890123(n)
      call s2345678901234(n)
      call s23456789012345(n)
      call s234567890123456(n)
      call s2345678901234567(n)
      call s23456789012345678(n)
      call s234567890123456789(n)
      call s2345678901234567890(n)
      call s23456789012345678901(n)
      call s234567890123456789012(n)
      call s2345678901234567890123(n)
      call s23456789012345678901234(n)
      call s234567890123456789012345(n)
      call s2345678901234567890123456(n)
      call s23456789012345678901234567(n)
      call s234567890123456789012345678(n)
      call s2345678901234567890123456789(n)
      call s23456789012345678901234567890(n)
      call s234567890123456789012345678901(n)
      if(n .eq. 31) then
        write(6,*) '*** ok ***'
      else
        write(6,*) '*** ng ***'
        write(6,*) 'true value=32,n=',n
      endif
      stop
      end
      
      subroutine s(i)
      i=1
      return
      end
      subroutine s2(i)
      call       s(i)
      i=2
      return
      end
      subroutine s23(i)
      call       s2(i)
      i=3
      return
      end
      subroutine s234(i)
      call       s23(i)
      i=4
      return
      end
      subroutine s2345(i)
      call       s234(i)
      i=5
      return
      end
      subroutine s23456(i)
      call       s2345(i)
      i=6
      return
      end
      subroutine s234567(i)
      call       s23456(i)
      i=7
      return
      end
      subroutine s2345678(i)
      call       s234567(i)
      i=8
      return
      end
      subroutine s23456789(i)
      call       s2345678(i)
      i=9
      return
      end
      subroutine s234567890(i)
      call       s23456789(i)
      i=10
      return
      end
      subroutine s2345678901(i)
      call       s234567890(i)
      i=11
      return
      end
      subroutine s23456789012(i)
      call       s2345678901(i)
      i=12
      return
      end
      subroutine s234567890123(i)
      call       s23456789012(i)
      i=13
      return
      end
      subroutine s2345678901234(i)
      call       s234567890123(i)
      i=14
      return
      end
      subroutine s23456789012345(i)
      call       s2345678901234(i)
      i=15
      return
      end
      subroutine s234567890123456(i)
      call       s23456789012345(i)
      i=16
      return
      end
      subroutine s2345678901234567(i)
      call       s234567890123456(i)
      i=17
      return
      end
      subroutine s23456789012345678(i)
      call       s2345678901234567(i)
      i=18
      return
      end
      subroutine s234567890123456789(i)
      call       s23456789012345678(i)
      i=19
      return
      end
      subroutine s2345678901234567890(i)
      call       s234567890123456789(i)
      i=20
      return
      end
      subroutine s23456789012345678901(i)
      call       s2345678901234567890(i)
      i=21
      return
      end
      subroutine s234567890123456789012(i)
      call       s23456789012345678901(i)
      i=22
      return
      end
      subroutine s2345678901234567890123(i)
      call       s234567890123456789012(i)
      i=23
      return
      end
      subroutine s23456789012345678901234(i)
      call       s2345678901234567890123(i)
      i=24
      return
      end
      subroutine s234567890123456789012345(i)
      call       s23456789012345678901234(i)
      i=25
      return
      end
      subroutine s2345678901234567890123456(i)
      call       s234567890123456789012345(i)
      i=26
      return
      end
      subroutine s23456789012345678901234567(i)
      call       s2345678901234567890123456(i)
      i=27
      return
      end
      subroutine s234567890123456789012345678(i)
      call       s23456789012345678901234567(i)
      i=28
      return
      end
      subroutine s2345678901234567890123456789(i)
      call       s234567890123456789012345678(i)
      i=29
      return
      end
      subroutine s23456789012345678901234567890(i)
      call       s2345678901234567890123456789(i)
      i=30
      return
      end
      subroutine s234567890123456789012345678901(i)
      call       s23456789012345678901234567890(i)
      i=31
      return
      end

