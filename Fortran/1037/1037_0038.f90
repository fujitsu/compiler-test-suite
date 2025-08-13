      parameter (n=1000)
      real(4),dimension(n,n)::a
      real(4),dimension(n)::b,master,d
      call random_number(a)
      call random_number(b)
      call random_number(d)

      master = matmul(transpose(a),b) + d
      write(2,*) master
      print *,'pass'
      end
