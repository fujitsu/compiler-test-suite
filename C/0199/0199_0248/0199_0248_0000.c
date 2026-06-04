#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned short v3 (unsigned short, signed char, unsigned char, unsigned int);
extern unsigned short (*v4) (unsigned short, signed char, unsigned char, unsigned int);
extern signed short v5 (signed short, signed char, signed int, unsigned char);
extern signed short (*v6) (signed short, signed char, signed int, unsigned char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned short v11 (signed short);
extern unsigned short (*v12) (signed short);
signed short v13 (unsigned short, unsigned int);
signed short (*v14) (unsigned short, unsigned int) = v13;
extern unsigned short v15 (unsigned int, unsigned char, signed int);
extern unsigned short (*v16) (unsigned int, unsigned char, signed int);
extern unsigned char v17 (signed short);
extern unsigned char (*v18) (signed short);
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned short v23 (signed int);
extern unsigned short (*v24) (signed int);
extern signed short v27 (unsigned int, unsigned char);
extern signed short (*v28) (unsigned int, unsigned char);
extern unsigned char v29 (unsigned char, unsigned short);
extern unsigned char (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -4;
signed short v32 = -2;
signed char v31 = 3;

signed short v13 (unsigned short v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 7;
signed char v37 = -2;
signed short v36 = -2;
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
unsigned short v41;
v41 = v1 ();
history[history_index++] = (int)v41;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
