      structure /str_tag1/
         integer i04_a(9)
         integer i04_b(9)
         integer i04_c(10000)
      end structure

      structure /str_tag2/
        integer i04_e(9)
      end structure

      record /str_tag1/ str_a
      record /str_tag2/ str_b
      equivalence (str_a,str_b)

      err=0
      str_a%i04_a = 0
      str_a%i04_b = 10

      do j=1,2
         err =   str_b%i04_e(j) + str_a%i04_a(j)
      end do

      write(6,*) err

      end
