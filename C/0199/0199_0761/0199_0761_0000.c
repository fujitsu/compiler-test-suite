#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned short, signed short, unsigned short);
extern signed char (*v2) (unsigned short, signed short, unsigned short);
extern unsigned short v3 (unsigned char, unsigned char, signed char, signed short);
extern unsigned short (*v4) (unsigned char, unsigned char, signed char, signed short);
extern signed int v5 (signed short, unsigned char, unsigned char);
extern signed int (*v6) (signed short, unsigned char, unsigned char);
extern void v9 (signed char);
extern void (*v10) (signed char);
extern signed short v11 (signed char, signed char, signed int);
extern signed short (*v12) (signed char, signed char, signed int);
extern void v13 (unsigned char);
extern void (*v14) (unsigned char);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned short v17 (signed short, signed int);
extern unsigned short (*v18) (signed short, signed int);
signed char v19 (unsigned short, signed char);
signed char (*v20) (unsigned short, signed char) = v19;
extern signed char v21 (unsigned int, signed char, signed short);
extern signed char (*v22) (unsigned int, signed char, signed short);
extern void v23 (unsigned char, unsigned int, signed int, unsigned int);
extern void (*v24) (unsigned char, unsigned int, signed int, unsigned int);
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
extern void v27 (void);
extern void (*v28) (void);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 2;
signed short v32 = -2;
signed char v31 = -4;

signed char v19 (unsigned short v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = -1;
unsigned short v37 = 4;
unsigned char v36 = 0;
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
signed short v42;
unsigned short v43;
signed char v44;
v41 = 0 - 3;
v42 = -1 - v32;
v43 = 4 + 0;
v44 = v1 (v41, v42, v43);
history[history_index++] = (int)v44;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
