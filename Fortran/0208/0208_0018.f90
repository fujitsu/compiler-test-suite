   subroutine sub
           complex(kind=8) :: c8,d8
           complex(kind=4) :: c4,d4
          complex(kind=2) :: c2,d2

          data c8%re /2.0/
          data c4%re /2.0/
           data c2%re /2.0/

          data c8%im /3.0/
         data c4%im /3.0/
          data c2%im /3.0/

         d8%re=2.0
         d4%re=2.0
         d2%re=2.0
         d8%im=3.0
         d4%im=3.0
         d2%im=3.0
if (c8%re /= d8%re) print *,101
if (c4%re /= d4%re) print *,102
if (c2%re /= d2%re) print *,103

        end subroutine sub
call sub
print *,'pass'
end
