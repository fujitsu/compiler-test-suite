#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed char);
extern unsigned int (*v2) (signed char);
extern signed char v3 (unsigned int, signed int, signed int);
extern signed char (*v4) (unsigned int, signed int, signed int);
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
unsigned short v11 (unsigned char);
unsigned short (*v12) (unsigned char) = v11;
unsigned short v13 (signed short, signed char, signed short, signed char);
unsigned short (*v14) (signed short, signed char, signed short, signed char) = v13;
extern unsigned char v17 (signed short);
extern unsigned char (*v18) (signed short);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned int v23 (unsigned int);
extern unsigned int (*v24) (unsigned int);
extern signed short v25 (unsigned short, signed int, signed short);
extern signed short (*v26) (unsigned short, signed int, signed short);
extern signed int v27 (signed int, signed char, unsigned short, signed char);
extern signed int (*v28) (signed int, signed char, unsigned short, signed char);
extern unsigned int v29 (signed int, signed char);
extern unsigned int (*v30) (signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 7U;
signed int v32 = 1;
unsigned int v31 = 7U;

unsigned short v13 (signed short v34, signed char v35, signed short v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = -3;
signed int v39 = -2;
signed int v38 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (unsigned char v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
unsigned char v44 = 2;
unsigned short v43 = 6;
signed int v42 = -1;
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
signed char v47;
unsigned int v48;
v47 = -1 - -4;
v48 = v1 (v47);
history[history_index++] = (int)v48;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
