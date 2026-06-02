#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned short, unsigned int, unsigned int);
extern unsigned short (*v2) (signed short, unsigned short, unsigned int, unsigned int);
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern unsigned short v5 (unsigned short);
extern unsigned short (*v6) (unsigned short);
extern signed short v9 (unsigned short);
extern signed short (*v10) (unsigned short);
extern unsigned int v11 (unsigned char, unsigned char, unsigned char);
extern unsigned int (*v12) (unsigned char, unsigned char, unsigned char);
extern void v13 (unsigned char, signed char, unsigned int);
extern void (*v14) (unsigned char, signed char, unsigned int);
extern void v15 (unsigned int, signed short, signed int, signed char);
extern void (*v16) (unsigned int, signed short, signed int, signed char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned char v21 (signed int, signed int, signed char);
extern unsigned char (*v22) (signed int, signed int, signed char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
signed int v25 (unsigned char, unsigned int, unsigned short, unsigned int);
signed int (*v26) (unsigned char, unsigned int, unsigned short, unsigned int) = v25;
extern signed short v27 (unsigned int, signed short, signed int);
extern signed short (*v28) (unsigned int, signed short, signed int);
extern unsigned char v29 (unsigned char, signed int, unsigned int);
extern unsigned char (*v30) (unsigned char, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
unsigned int v32 = 4U;
unsigned char v31 = 5;

signed int v25 (unsigned char v34, unsigned int v35, unsigned short v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = -2;
unsigned int v39 = 5U;
signed short v38 = -3;
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
signed short v43;
unsigned short v44;
unsigned int v45;
unsigned int v46;
unsigned short v47;
v43 = 1 - -4;
v44 = 2 - 2;
v45 = v32 + v32;
v46 = v32 - v32;
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
