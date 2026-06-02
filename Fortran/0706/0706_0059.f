      call s1
      print *,'pass'
      end
      module m_1
      implicit character*5(s)
      integer:: unit=1  
      integer:: count=1 
      contains
       recursive function s11() result(cs)
        character*5 cs
        cs=s24(); write(unit,*) cs
        cs=s31 (); write(unit,*) cs
        cs= s13 (); write(unit,*) cs
        cs= s111(); write(unit,*) cs
        cs= s112(); write(unit,*) cs
        cs= 's11'
        return
       entry      s12() result(cs)
        cs= s24() ;write(unit,*) cs
        cs= s31 () ;write(unit,*) cs
        cs= s13 () ;write(unit,*) cs
        cs= s111() ;write(unit,*) cs
        cs= s112() ;write(unit,*) cs
        cs = 's12'
        return
       entry      s13() result(cs)
        cs= 's13'
       contains 
        recursive function s111() result(cs)
        character*5 cs
         cs= s24 () ;write(unit,*) cs
         cs= s31 () ;write(unit,*) cs
         cs= s13 () ;write(unit,*) cs
         cs= s113 () ;write(unit,*) cs
         cs= 's111'
        end function s111
        recursive function s112() result(cs) 
        character*5 cs
         cs= s24 () ;write(unit,*) cs
         cs= s31 () ;write(unit,*) cs
         cs= s13 () ;write(unit,*) cs
         cs= s113 () ;write(unit,*) cs
         cs= 's112'
        end function s112
        recursive function s113() result(cs) 
        character*5 cs
         cs= 's113'
        end function s113
       end function s11
      end module m_1
      recursive function s21() result(cs)
      use m_1
      character*5 cs
       cs= s11 () ;write(unit,*) cs
       cs= s12 () ;write(unit,*) cs
       cs= s211 () ;write(unit,*) cs
       cs= s212 () ;write(unit,*) cs
       cs= s23 () ;write(unit,*) cs
       cs= 's21'
       return
      entry s22() result(cs)
       cs= s11 () ;write(unit,*) cs
       cs= s12 () ;write(unit,*) cs
       cs= s211 () ;write(unit,*) cs
       cs= s212 () ;write(unit,*) cs
       cs= s23 () ;write(unit,*) cs
       cs= 's22'
       return
      entry s23() result(cs)
       cs= s11 () ;write(unit,*) cs
       cs= s12 () ;write(unit,*) cs
       cs= 's23'
       return
      entry s24() result(cs)
       cs= 's24'
      contains 
       recursive function s211() result(cs)
       character*5 cs
        cs= s11 () ;write(unit,*) cs
        cs= s12 () ;write(unit,*) cs
        cs= s23 () ;write(unit,*) cs
        cs= s213 () ;write(unit,*) cs
        cs= 's211'
       end function s211
       recursive function s212() result(cs)
       character*5 cs
        cs= s11 () ;write(unit,*) cs
        cs= s12 () ;write(unit,*) cs
        cs= s23 () ;write(unit,*) cs
        cs= s213 () ;write(unit,*) cs
        cs= 's212'
       end function s212
       recursive function s213() result(cs)
       character*5 cs
        cs= 's213'
       end function s213
      end function s21
      function s31() result(cs)
        use m_1
        character*5 cs
        cs= 's31'
      end function s31
      subroutine s1()
      use m_1
      character*10 r
      character*5 cs,s21,s22
      open (unit,delim='quote')
      cs= s21 () ;write(unit,*) cs
      cs= s22 () ;write(unit,*) cs
      call chk
      read (unit,end=10,fmt=*) r
      print *,'fail'
10    end
      subroutine chk11_12
      use m_1
      character*10 r
        read (unit,*)r;if (r/='s24  ')print *,'fail'
        read (unit,*)r;if (r/='s31  ')print *,'fail'
        read (unit,*)r;if (r/='s13  ')print *,'fail'
         read (unit,*)r;if (r/='s24  ')print *,'fail'
         read (unit,*)r;if (r/='s31  ')print *,'fail'
         read (unit,*)r;if (r/='s13  ')print *,'fail'
         read (unit,*)r;if (r/='s113 ')print *,'fail'
        read (unit,*)r;if (r/='s111 ')print *,'fail'
         read (unit,*)r;if (r/='s24  ')print *,'fail'
         read (unit,*)r;if (r/='s31  ')print *,'fail'
         read (unit,*)r;if (r/='s13  ')print *,'fail'
         read (unit,*)r;if (r/='s113 ')print *,'fail'
        read (unit,*)r;if (r/='s112 ')print *,'fail'
      end subroutine 
      subroutine chk211_212
      use m_1
      character*10 r
        call chk11_12
        read (unit,*)r;if (r/='s11  ')print *,'fail'
        call chk11_12
        read (unit,*)r;if (r/='s12  ')print *,'fail'
         call chk11_12
         read (unit,*)r;if (r/='s11  ')print *,'fail'
         call chk11_12
         read (unit,*)r;if (r/='s12  ')print *,'fail'
        read (unit,*)r;if (r/='s23  ')print *,'fail'
        read (unit,*)r;if (r/='s213 ')print *,'fail'
      end subroutine 
      subroutine chk
      use m_1
      character*10 r
      rewind unit
       call chk11_12
       read (unit,*)r;if (r/='s11  ')print *,'fail'
       call chk11_12
       read (unit,*)r;if (r/='s12  ')print *,'fail'
       call chk211_212
       read (unit,*)r;if (r/='s211 ')print *,'fail'
       call chk211_212
       read (unit,*)r;if (r/='s212 ')print *,'fail'
        call chk11_12
        read (unit,*)r;if (r/='s11  ')print *,'fail'
        call chk11_12
        read (unit,*)r;if (r/='s12  ')print *,'fail'
       read (unit,*)r;if (r/='s23  ')print *,'fail'
      read (unit,*)r;if (r/='s21  ')print *,'fail'
       call chk11_12
       read (unit,*)r;if (r/='s11  ')print *,'fail'
       call chk11_12
       read (unit,*)r;if (r/='s12  ')print *,'fail'
       call chk211_212
       read (unit,*)r;if (r/='s211 ')print *,'fail'
       call chk211_212
       read (unit,*)r;if (r/='s212 ')print *,'fail'
        call chk11_12
        read (unit,*)r;if (r/='s11  ')print *,'fail'
        call chk11_12
        read (unit,*)r;if (r/='s12  ')print *,'fail'
       read (unit,*)r;if (r/='s23  ')print *,'fail'
      read (unit,*)r;if (r/='s22  ')print *,'fail'
      end subroutine 
