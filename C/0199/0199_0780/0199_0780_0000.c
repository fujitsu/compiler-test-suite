#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed char, unsigned short, signed short, unsigned short);
extern unsigned short (*v2) (signed char, unsigned short, signed short, unsigned short);
extern unsigned int v3 (unsigned short, signed int, unsigned int, signed char);
extern unsigned int (*v4) (unsigned short, signed int, unsigned int, signed char);
unsigned char v5 (signed char, signed int, unsigned short, unsigned char);
unsigned char (*v6) (signed char, signed int, unsigned short, unsigned char) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed short v9 (unsigned int, unsigned short);
extern signed short (*v10) (unsigned int, unsigned short);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
extern unsigned char v15 (signed char);
extern unsigned char (*v16) (signed char);
extern unsigned char v17 (unsigned int, signed short);
extern unsigned char (*v18) (unsigned int, signed short);
extern signed short v19 (signed short, signed char);
extern signed short (*v20) (signed short, signed char);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern void v23 (void);
extern void (*v24) (void);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed short v27 (unsigned int, unsigned char, unsigned char, signed char);
extern signed short (*v28) (unsigned int, unsigned char, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 3;
unsigned short v32 = 3;
unsigned short v31 = 6;

unsigned char v5 (signed char v34, signed int v35, unsigned short v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -1;
unsigned int v39 = 2U;
signed short v38 = -1;
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
signed char v43;
unsigned short v44;
signed short v45;
unsigned short v46;
unsigned short v47;
v43 = 3 + -2;
v44 = 0 - v32;
v45 = -4 + 1;
v46 = v32 - 5;
v47 = v1 (v43, v44, v45, v46);
history[history_index++] = (int)v47;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
