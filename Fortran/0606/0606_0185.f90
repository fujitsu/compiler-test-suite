module m1
  type t
    real x
  contains
    procedure t_concat_ch
    procedure,pass(b) :: ch_concat_t
    generic :: operator(//) => t_concat_ch,ch_concat_t   
  end type
contains
    function t_concat_ch(a,b)
        class(t),intent(in) :: a
        character(*),intent(in) :: b
        character(int(abs(a%x))*len(b)) t_concat_ch
        t_concat_ch = repeat(b,len(t_concat_ch)/len(b))
    end function
    function ch_concat_t(a,b)
        character(*),intent(in) :: a
        class(t),intent(in) :: b
        character(int(abs(b%x))*len(a)) ch_concat_t
        ch_concat_t = repeat(a,len(ch_concat_t)/len(a))
    end function
end  module

program example
  use m1
  type(t) :: a = t(0.5)
  print *,a//'xx'
  print *,'y'//a
  print *, 'pass'
end
