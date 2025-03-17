      integer::a(5),b(5)

      a=(/1,0,0,0,0/)
      b=(/2,0,0,0,0/)
      if (all(a/=1).or.all(b/=2)) write(6,*) "NG"
      a=(/0,0,0,0,0/)
      b=(/0,0,0,0,0/)
      if (.not.all(a/=1).and..not.all(b/=2)) write(6,*) "NG"

      print *,'pass'
      end
