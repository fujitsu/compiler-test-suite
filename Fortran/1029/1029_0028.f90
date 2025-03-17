      character*3::a(3),b(2)

      a=(/'abc','def','ghi'/)
      b=(/'yyy','zzz'/)

      if ( (a(1).eq.'abb' .or. a(2).eq.'def') .and.   &
           (a(3).eq.'ghh' .or. b(1)//b(2).eq.'yyy'//'zzz') ) then
        n=1
      else
       write(6,*) "NG"
      endif

      print *,'pass'

      end
