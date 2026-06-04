#include <stdio.h>
#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern unsigned char v3 (signed int, unsigned int);
extern unsigned char (*v4) (signed int, unsigned int);
extern signed int v5 (unsigned char, unsigned char, signed short, unsigned char);
extern signed int (*v6) (unsigned char, unsigned char, signed short, unsigned char);
extern unsigned int v7 (unsigned short, signed char, signed short);
extern unsigned int (*v8) (unsigned short, signed char, signed short);
extern unsigned char v9 (signed short, unsigned int);
extern unsigned char (*v10) (signed short, unsigned int);
signed short v11 (unsigned char);
signed short (*v12) (unsigned char) = v11;
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern void v15 (signed int, unsigned char);
extern void (*v16) (signed int, unsigned char);
extern signed int v17 (unsigned short, signed char, signed short);
extern signed int (*v18) (unsigned short, signed char, signed short);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned int v23 (unsigned char, unsigned char, signed short, signed int);
extern unsigned int (*v24) (unsigned char, unsigned char, signed short, signed int);
extern signed short v25 (signed short, signed short);
extern signed short (*v26) (signed short, signed short);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed short v29 (unsigned char, signed short, unsigned char, unsigned short);
extern signed short (*v30) (unsigned char, signed short, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -1;
signed short v32 = -4;
signed int v31 = -1;

signed short v11 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 4;
signed int v36 = 0;
unsigned char v35 = 7;
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
v1 ();
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
