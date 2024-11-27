 module m1
  contains
    elemental subroutine f1(x1,x2,x3,x4,x5,x6)
    character(*),intent(in)::x1,x2,x3,x4,x5
    character(*),intent(out)::x6
    x6=x1//x2//x3//x4//x5
    end subroutine
  end
 use m1
 character,allocatable,dimension(:)::a1,a2,a3,a4,a5,a6*25
 allocate(a1(2),a2(2),a3(2),a4(2),a5(2),a6(2))
 a1=(/'1','a'/)
 a2=(/'2','b'/)
 a3=(/'3','c'/)
 a4=(/'4','d'/)
 a5=(/'5','e'/)
!
 call f1(&
   x1=a1//a2//a3//a4//a5,&
   x2=a1//a2//a3//a4//a5,&
   x3=a1//a2//a3//a4//a5,&
   x4=a1//a2//a3//a4//a5,&
   x5=a1//a2//a3//a4//a5,&
   x6=a6)
 if (a6(1)/='1234512345123451234512345')write(6,*) "NG"
 if (a6(2)/='abcdeabcdeabcdeabcdeabcde')write(6,*) "NG"
  print *,'pass'
 end
