module m1
    implicit none
    interface
       function w(d)
       end
    end interface
    procedure(w  )::q
end
use m1
    implicit none
    procedure(q  )::qq
if (q    (0.1)/=0.1) print *,10001
if (qq   (0.1)/=0.1) print *,10002

print *,'pass'
end
   function q(d)
   entry   qq(d)
   q=d
   end 
