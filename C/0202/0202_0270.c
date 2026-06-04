

#include<stdio.h>
#include<unistd.h>
#include<fcntl.h>

#define BUF_SIZE 512

int main()
{
#if defined(OBE)
  printf("  : OK \n");
#else
  int fd1, fd2;
  int byte_num;
  char buf[BUF_SIZE];

  { 
    fd1 = open(__FILE__, O_RDONLY); 
    fd2 = open(__FILE__, O_WRONLY); 
  }

  { 
    byte_num = read(fd1, &buf[0], 5);  
    if(byte_num == -1)  
    {
      close(fd1);
      close(fd2);
      return 1;
    }

  }

#if CFE_TEST
  { 
    byte_num = write(fd2, &buf[0], 5);  
    if(byte_num == -1) 
    {
      close(fd1);
      close(fd2);
      return 1;
    }
  }
#endif

  { 
    if (fsync (fd1) < 0)
      {
        close(fd1);
        close(fd2);
        return -1;
      }
  }

  { 
    close(fd1);
    close(fd2);
  }
  printf("  : OK \n");
#endif
  return 0;
}
