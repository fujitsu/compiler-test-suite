      call s1
      print *,'pass'
      end
      subroutine  s1
        integer,dimension(3)::a
        parameter (a=(/1,2,3/))
        parameter (i=a(3))
        integer,dimension(2)::b
        parameter (b=a(1:3:2))
        parameter (j=b(1))
        parameter (k=b(2))
        if (i/=3)print *,'fail'
        if (j/=1)print *,'fail'
        if (k/=3)print *,'fail'
      end
