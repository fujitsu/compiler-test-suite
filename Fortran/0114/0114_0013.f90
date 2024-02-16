       module mod
        type zz
          integer(4),pointer::zz_p=>null()
        end type
        type(zz),save::a
       contains
        subroutine sub(b)
         type(zz),intent(out)::b
        end subroutine
       end module

       subroutine s
        use mod
         call sub(a)
        end subroutine
	call  s
	print *,'PASS'
	end
