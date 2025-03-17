  module m1
    type a
      integer a1
    end type
    contains
    pure function i1fun(b,c)
      type(a),intent(in)::b,c
      type(a)::i1fun
      i1fun%a1=b%a1+c%a1
    end function

    pure function i2fun(b)
      type(a),intent(in)::b
      integer::i2fun
      i2fun=b%a1
    end function

    subroutine sub(b,c)
      type(a)::b,c
      character*( i2fun(i1fun(b,c)) ) ::d
      character*6 d1
      if( len(d) .ne. 6 ) print*,'ng1'
      d='abcdefg'
      d1='abcdefgh'
      if (d .ne. d1)print*,'ng2'
    end subroutine
  end module

  program main
    use m1
    type(a)::b,c
    b%a1=2;c%a1=4
    call sub(b,c)
    print*,'pass'
  end
