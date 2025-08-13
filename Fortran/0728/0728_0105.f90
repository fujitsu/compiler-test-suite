  call s1
  print *,'pass'
  end
  subroutine s1
   type a
    integer x
    type(a),pointer::y_n
    type(a),pointer::y_b
   end type
   type(a),target::b
   b%x=1
   allocate(b%y_n)
   nullify(b%y_b)

   b%y_n%x=2
   allocate(b%y_n%y_n)
   b%y_n%y_b => b

   b%y_n%y_n%x =3
   nullify(b%y_n%y_n%y_n)
   b%y_n%y_n%y_b => b%y_n
 write(19,*)b%x
 write(19,*)b%y_n%x
 write(19,*)b%y_n%y_n%x
 write(19,*)b%y_n%y_n%y_b%x
 write(19,*)b%y_n%y_n%y_b%y_b%x
 write(19,*)'=='
   call sub(b%y_n)
 write(19,*)b%x
 write(19,*)b%y_n%x
call chk
     contains
      subroutine sub(p)
       type(a),pointer::p
       p%y_b%y_n => p%y_n
      end subroutine
 end
subroutine chk
rewind 19
read(19,*)i;if (i/=1)write(6,*) "NG"
read(19,*)i;if (i/=2)write(6,*) "NG"
read(19,*)i;if (i/=3)write(6,*) "NG"
read(19,*)i;if (i/=2)write(6,*) "NG"
read(19,*)i;if (i/=1)write(6,*) "NG"
read(19,*)
read(19,*)i;if (i/=1)write(6,*) "NG"
read(19,*)i;if (i/=3)write(6,*) "NG"
read(19,*,end=1)i
write(6,*) "NG"
return
1 end
