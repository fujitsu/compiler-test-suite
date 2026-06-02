#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned char);
extern void (*v2) (unsigned char);
extern void v3 (unsigned char);
extern void (*v4) (unsigned char);
extern signed int v5 (signed short, unsigned char, signed char);
extern signed int (*v6) (signed short, unsigned char, signed char);
unsigned short v7 (unsigned int, signed char, unsigned char, unsigned int);
unsigned short (*v8) (unsigned int, signed char, unsigned char, unsigned int) = v7;
extern unsigned int v9 (signed short, signed int);
extern unsigned int (*v10) (signed short, signed int);
extern signed int v11 (unsigned int, unsigned int, unsigned char, unsigned short);
extern signed int (*v12) (unsigned int, unsigned int, unsigned char, unsigned short);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed short v15 (unsigned short, signed int, unsigned char);
extern signed short (*v16) (unsigned short, signed int, unsigned char);
unsigned int v17 (signed char);
unsigned int (*v18) (signed char) = v17;
extern void v19 (void);
extern void (*v20) (void);
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
extern unsigned short v23 (signed char);
extern unsigned short (*v24) (signed char);
extern unsigned short v25 (unsigned int, unsigned short, signed int);
extern unsigned short (*v26) (unsigned int, unsigned short, signed int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern unsigned char v29 (unsigned int, signed short);
extern unsigned char (*v30) (unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
unsigned short v32 = 6;
unsigned short v31 = 7;

unsigned int v17 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned short v37 = 3;
signed int v36 = -4;
unsigned short v35 = 4;
trace++;
switch (trace)
{
case 5: 
return 6U;
default: abort ();
}
}
}
}

unsigned short v7 (unsigned int v38, signed char v39, unsigned char v40, unsigned int v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned char v44 = 3;
unsigned short v43 = 3;
unsigned short v42 = 6;
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
unsigned char v47;
v47 = 4 - 7;
v1 (v47);
}
} while (trace < 10);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
