#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed char, signed int);
extern signed char (*v2) (signed char, signed int);
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed char v7 (signed short, unsigned int, signed short, signed short);
extern signed char (*v8) (signed short, unsigned int, signed short, signed short);
extern signed int v9 (unsigned char, unsigned int);
extern signed int (*v10) (unsigned char, unsigned int);
signed short v11 (void);
signed short (*v12) (void) = v11;
extern signed short v13 (unsigned char);
extern signed short (*v14) (unsigned char);
extern signed short v15 (unsigned char, signed int, unsigned int);
extern signed short (*v16) (unsigned char, signed int, unsigned int);
extern signed int v17 (signed char, signed short);
extern signed int (*v18) (signed char, signed short);
extern unsigned int v19 (signed int);
extern unsigned int (*v20) (signed int);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned int v23 (signed short, unsigned int, unsigned short, signed int);
extern unsigned int (*v24) (signed short, unsigned int, unsigned short, signed int);
extern unsigned char v25 (unsigned char, unsigned short, unsigned short, signed char);
extern unsigned char (*v26) (unsigned char, unsigned short, unsigned short, signed char);
extern unsigned short v27 (signed int, unsigned int, unsigned int);
extern unsigned short (*v28) (signed int, unsigned int, unsigned int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 2;
unsigned int v32 = 4U;
signed char v31 = 0;

signed short v11 (void)
{
{
for (;;) {
signed char v36 = 2;
unsigned char v35 = 0;
signed short v34 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed char v39;
signed int v40;
signed char v41;
v39 = -2 + 1;
v40 = 0 - 0;
v41 = v1 (v39, v40);
history[history_index++] = (int)v41;
}
} while (trace < 11);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
