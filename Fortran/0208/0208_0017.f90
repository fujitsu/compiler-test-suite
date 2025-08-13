   subroutine sub
           complex(kind=8) :: c8,d8
           complex(kind=4) :: c4,d4
          complex(kind=2) :: c2,d2
           complex(kind=4) :: tmp

          data c8%re /2.0/
          data c4%re /2.0/
           data c2%re /2.0/

          data c8%im /3.0/
         data c4%im /3.0/
          data c2%im /3.0/


          tmp = c2

          write(7,*) valc8
          write(7,*) valc4
          write(7,*) tmp
        end subroutine sub
print *,'pass'
end
