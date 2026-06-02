#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed short);
extern signed int (*v2) (signed short);
extern void v3 (unsigned int);
extern void (*v4) (unsigned int);
extern signed char v5 (signed short);
extern signed char (*v6) (signed short);
unsigned int v7 (unsigned int, signed int, signed short, signed char);
unsigned int (*v8) (unsigned int, signed int, signed short, signed char) = v7;
extern unsigned char v9 (signed short, unsigned short);
extern unsigned char (*v10) (signed short, unsigned short);
extern unsigned char v11 (signed int);
extern unsigned char (*v12) (signed int);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
signed short v19 (unsigned char, signed char);
signed short (*v20) (unsigned char, signed char) = v19;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed short v27 (signed short, unsigned short, signed int, signed int);
extern signed short (*v28) (signed short, unsigned short, signed int, signed int);
extern signed int v29 (signed int, unsigned short);
extern signed int (*v30) (signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -1;
unsigned char v32 = 5;
unsigned int v31 = 7U;

signed short v19 (unsigned char v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 1U;
unsigned char v37 = 5;
signed int v36 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned int v39, signed int v40, signed short v41, signed char v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned char v45 = 3;
signed char v44 = -2;
signed short v43 = -4;
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
signed short v48;
signed int v49;
v48 = -4 + 1;
v49 = v1 (v48);
history[history_index++] = (int)v49;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
