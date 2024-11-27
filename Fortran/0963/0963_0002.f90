print *, "pass"
selcons:do i = 1,2
      exit selcons
    associate(a=>i)
    end associate
    end do selcons
end
