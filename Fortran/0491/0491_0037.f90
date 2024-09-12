    subroutine sub(k)
    interface
      subroutine k()
      end
    end interface
    call k
end

    interface
      subroutine nn()
      end
    end interface
call sub(nn)
print *,'pass'
end
      subroutine nn()
      end
