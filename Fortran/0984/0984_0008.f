
      structure /str/
        integer  i4
      end structure
      record /str/ fun,f
      f=fun()
      if (f%i4.ne.1) then
        print *,'?? NG ??'
        stop 'stop(2)'
      endif
      print *,'** OK **'
      end

      function fun()
      structure /str/
        integer  i4/1/
      end structure
      record /str/ fun
      data i,j,k/1,2,3/
      if (i.ne.1 .or. j.ne.2 .or. k.ne.3) then
        print *,'?? NG ??'
        stop 'stop(1)'
      endif
      end
