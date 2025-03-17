subroutine  CH11_1
end subroutine  CH11_1

subroutine  CH11_2
end subroutine  CH11_2

MODULE DATA_MOD
  INTEGER :: I = 0
  contains
  subroutine sub()
  end subroutine
END MODULE

subroutine  CH11_3
  real  DATA_MEAN
  DATA_MEAN = 9
end subroutine  CH11_3

use DATA_MOD
end
