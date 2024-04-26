      a=1.
      go to 99999
    1 a=a+1.
      go to 3
    2 a=a+1.
      go to 4
    3 a=a+1.
      go to 1
    4 a=a+1.
      if (a.ne.3.) go to 5
      go to 2
    5 a=a+1.
    6 go to 7
    7 go to 5
99999 if (a.ne.1.) then
       print *,'*** ng ***'
      else
       print *,'*** ok ***'
       end if
      stop
      end
