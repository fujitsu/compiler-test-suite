#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed short);
extern unsigned int (*v2) (unsigned short, signed short);
extern unsigned int v3 (unsigned char, unsigned int, unsigned char);
extern unsigned int (*v4) (unsigned char, unsigned int, unsigned char);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned char v7 (unsigned short);
extern unsigned char (*v8) (unsigned short);
extern signed char v9 (unsigned int, unsigned int, signed short, signed short);
extern signed char (*v10) (unsigned int, unsigned int, signed short, signed short);
extern signed char v11 (signed int, unsigned short);
extern signed char (*v12) (signed int, unsigned short);
extern unsigned char v13 (unsigned short, unsigned short, unsigned int);
extern unsigned char (*v14) (unsigned short, unsigned short, unsigned int);
extern signed int v15 (unsigned char, unsigned int, unsigned char);
extern signed int (*v16) (unsigned char, unsigned int, unsigned char);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned char v19 (signed char, signed int, signed char);
extern unsigned char (*v20) (signed char, signed int, signed char);
signed int v21 (unsigned int, unsigned char, signed int);
signed int (*v22) (unsigned int, unsigned char, signed int) = v21;
extern signed char v25 (signed char, signed char);
extern signed char (*v26) (signed char, signed char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 6;
signed int v32 = 2;
signed char v31 = -3;

signed int v21 (unsigned int v34, unsigned char v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = 3;
signed int v38 = -4;
signed short v37 = 3;
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
unsigned short v42;
signed short v43;
unsigned int v44;
v42 = 3 + 7;
v43 = 2 + 0;
v44 = v1 (v42, v43);
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
