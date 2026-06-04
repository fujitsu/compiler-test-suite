#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned short, signed char);
extern signed int (*v2) (unsigned short, signed char);
extern signed int v3 (signed int, unsigned char, signed int, signed short);
extern signed int (*v4) (signed int, unsigned char, signed int, signed short);
extern unsigned int v5 (unsigned short, unsigned int);
extern unsigned int (*v6) (unsigned short, unsigned int);
extern signed int v7 (unsigned short, unsigned short, signed int, signed char);
extern signed int (*v8) (unsigned short, unsigned short, signed int, signed char);
signed int v9 (void);
signed int (*v10) (void) = v9;
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed int v13 (signed short);
extern signed int (*v14) (signed short);
unsigned int v15 (unsigned int);
unsigned int (*v16) (unsigned int) = v15;
extern unsigned int v17 (signed char, unsigned short, signed short);
extern unsigned int (*v18) (signed char, unsigned short, signed short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern unsigned int v23 (signed int, unsigned int, unsigned short);
extern unsigned int (*v24) (signed int, unsigned int, unsigned short);
extern signed short v25 (signed char, signed short, unsigned int);
extern signed short (*v26) (signed char, signed short, unsigned int);
extern signed char v27 (unsigned short);
extern signed char (*v28) (unsigned short);
extern unsigned short v29 (signed short, signed char, unsigned char);
extern unsigned short (*v30) (signed short, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
unsigned short v32 = 4;
unsigned int v31 = 0U;

unsigned int v15 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = -4;
signed int v36 = 1;
unsigned int v35 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (void)
{
{
for (;;) {
signed int v40 = -1;
signed int v39 = 2;
unsigned short v38 = 6;
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
unsigned short v43;
signed char v44;
signed int v45;
v43 = 2 + 3;
v44 = 3 - 1;
v45 = v1 (v43, v44);
history[history_index++] = (int)v45;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
