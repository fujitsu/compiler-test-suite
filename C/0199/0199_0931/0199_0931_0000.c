#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed short);
extern unsigned short (*v2) (signed short);
extern signed int v3 (unsigned char, signed char, signed short);
extern signed int (*v4) (unsigned char, signed char, signed short);
extern unsigned short v5 (unsigned char, signed short, signed char, signed char);
extern unsigned short (*v6) (unsigned char, signed short, signed char, signed char);
unsigned short v7 (signed int);
unsigned short (*v8) (signed int) = v7;
extern unsigned int v9 (unsigned char, signed int, unsigned char);
extern unsigned int (*v10) (unsigned char, signed int, unsigned char);
extern unsigned int v11 (signed int, unsigned int, signed int);
extern unsigned int (*v12) (signed int, unsigned int, signed int);
extern unsigned short v13 (signed int, unsigned char, unsigned short, unsigned int);
extern unsigned short (*v14) (signed int, unsigned char, unsigned short, unsigned int);
extern signed int v15 (unsigned int, unsigned short, signed short);
extern signed int (*v16) (unsigned int, unsigned short, signed short);
extern signed short v17 (unsigned short);
extern signed short (*v18) (unsigned short);
extern unsigned int v19 (signed short, signed char);
extern unsigned int (*v20) (signed short, signed char);
extern unsigned int v21 (signed short, unsigned char, unsigned int);
extern unsigned int (*v22) (signed short, unsigned char, unsigned int);
signed char v25 (signed short, signed short, unsigned short, signed short);
signed char (*v26) (signed short, signed short, unsigned short, signed short) = v25;
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed int v29 (signed char);
extern signed int (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 1;
signed char v32 = 2;
signed int v31 = 2;

signed char v25 (signed short v34, signed short v35, unsigned short v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -1;
signed int v39 = -3;
signed int v38 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed int v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
signed char v44 = 1;
signed char v43 = -3;
signed int v42 = -4;
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
signed short v47;
unsigned short v48;
v47 = 2 - -3;
v48 = v1 (v47);
history[history_index++] = (int)v48;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
