#include <stdio.h>
extern void v1 (unsigned int, signed short, signed int, signed int);
extern void (*v2) (unsigned int, signed short, signed int, signed int);
extern unsigned short v5 (signed int, unsigned int, signed char, signed int);
extern unsigned short (*v6) (signed int, unsigned int, signed char, signed int);
extern signed short v7 (signed short);
extern signed short (*v8) (signed short);
extern void v9 (unsigned char, unsigned short, signed short, signed int);
extern void (*v10) (unsigned char, unsigned short, signed short, signed int);
extern signed int v11 (unsigned short, signed int, signed int, signed int);
extern signed int (*v12) (unsigned short, signed int, signed int, signed int);
extern signed int v13 (signed short);
extern signed int (*v14) (signed short);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
extern signed int v19 (unsigned int, signed int);
extern signed int (*v20) (unsigned int, signed int);
extern signed char v21 (unsigned char, signed int, unsigned short, unsigned short);
extern signed char (*v22) (unsigned char, signed int, unsigned short, unsigned short);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern void v27 (unsigned char, signed char);
extern void (*v28) (unsigned char, signed char);
extern signed int v29 (signed short, unsigned int, signed short, signed char);
extern signed int (*v30) (signed short, unsigned int, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
unsigned short v32 = 1;
unsigned short v31 = 0;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned int v36;
signed short v37;
signed int v38;
signed int v39;
v36 = 2U - 1U;
v37 = 3 - -2;
v38 = -4 - 3;
v39 = 2 - -1;
v1 (v36, v37, v38, v39);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
