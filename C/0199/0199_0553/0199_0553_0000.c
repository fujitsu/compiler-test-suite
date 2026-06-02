#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned char v9 (unsigned short);
extern unsigned char (*v10) (unsigned short);
extern void v11 (void);
extern void (*v12) (void);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned short v17 (unsigned int, signed short, unsigned int);
extern unsigned short (*v18) (unsigned int, signed short, unsigned int);
extern unsigned char v19 (unsigned short, unsigned int, unsigned char);
extern unsigned char (*v20) (unsigned short, unsigned int, unsigned char);
signed short v21 (unsigned short, unsigned char);
signed short (*v22) (unsigned short, unsigned char) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern void v29 (unsigned short, unsigned int, signed short);
extern void (*v30) (unsigned short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -2;
unsigned int v32 = 1U;
signed int v31 = -3;

signed short v21 (unsigned short v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 2;
signed short v37 = -3;
signed short v36 = 3;
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
signed char v41;
v41 = v1 ();
history[history_index++] = (int)v41;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
