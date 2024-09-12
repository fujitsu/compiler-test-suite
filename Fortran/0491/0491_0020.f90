  subroutine sub(k)
    interface
      subroutine k()
      end
    end interface
    call k
  end
    interface
      subroutine w()
      end
    end interface
call sub(w)
print *,'pass'
end
      subroutine w()
      end
