#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned int);
extern signed int (*v2) (unsigned int);
signed int v3 (signed char, unsigned int, signed short);
signed int (*v4) (signed char, unsigned int, signed short) = v3;
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed char v7 (signed int, unsigned char, unsigned int);
extern signed char (*v8) (signed int, unsigned char, unsigned int);
extern unsigned char v9 (unsigned short);
extern unsigned char (*v10) (unsigned short);
extern signed char v11 (unsigned short);
extern signed char (*v12) (unsigned short);
extern unsigned int v13 (unsigned char);
extern unsigned int (*v14) (unsigned char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed char v19 (unsigned int);
extern signed char (*v20) (unsigned int);
extern unsigned short v21 (signed char, signed short);
extern unsigned short (*v22) (signed char, signed short);
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern signed char v25 (signed char, signed short, signed char, unsigned int);
extern signed char (*v26) (signed char, signed short, signed char, unsigned int);
extern unsigned int v27 (unsigned char, signed int, signed char, signed int);
extern unsigned int (*v28) (unsigned char, signed int, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 7;
unsigned char v32 = 6;
signed short v31 = 1;

signed int v3 (signed char v34, unsigned int v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 2;
signed char v38 = 3;
unsigned int v37 = 4U;
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
unsigned int v42;
signed int v43;
v42 = 7U - 2U;
v43 = v1 (v42);
history[history_index++] = (int)v43;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
