#include <stdio.h>
#include <stdlib.h>

struct Employee
{
  int number;
  char name[51];
  int salary;
};

void print_data (struct Employee *e_ptr)
{
  while (1) {
    if (e_ptr->number == 0) {
      break;
    }
    printf("%d,%s,%d\n", 
	   e_ptr->number, e_ptr->name, e_ptr->salary);

    e_ptr++;
  }
}

int print_data2 (void)
{
  struct Employee e[] = {
    {100, "Aaa Aaaa", 200000},
    {101, "Bbb Bbbb", 220000},
    {102, "Ccc Cccc", 180000},
    {103, "Ddd Dddd", 160000},
    {104, "Eee Eeee", 240000},
    {0, "", 0}  
  };

  if (e[0].salary < e[1].salary) {
    return 1;
  } else {
    return 0;
  }
  return 0;
}

int main(int argc, char *argv[])
{
  int tmp1, tmp2;

  struct Employee e[] = {
    {100, "Aaa Aaaa", 200000},
    {101, "Bbb Bbbb", 220000},
    {102, "Ccc Cccc", 180000},
    {103, "Ddd Dddd", 160000},
    {104, "Eee Eeee", 240000},
    {0, "", 0}  
  };

  tmp1 = e[0].number + e[1].number + e[2].number + e[0].salary + e[1].salary + e[2].salary;
  tmp2 = e[0].salary + e[1].salary + e[2].salary;

  if (e[0].salary < e[1].salary) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 0;
}

