     integer::i1=1,i2=10,i3=100,i4=1000,k(2)=0
      call sub(i1,i2,i3,i4,k)
      call sub(i1,i2,i3,i4,k(2:1:-1))
      call sub(i1,i2,i3,i4,k)
      if (any(k/=(/1122,2211/))) print *,'error'
      print *,'pass'
    end

    subroutine sub(i1,i2,i3,i4,k)
     integer::k(2)
      call subsub(i1,i2,i3,i4,k)
    end subroutine

    subroutine subsub(i1,i2,i3,i4,k)
     integer::k(2)
     k(1)=k(1)+i1+i2
     k(2)=k(2)+i3+i4
    end subroutine
