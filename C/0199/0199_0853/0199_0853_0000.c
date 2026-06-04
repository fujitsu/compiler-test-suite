#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned char);
extern signed char (*v2) (unsigned char);
unsigned short v3 (signed char, signed short, signed int, unsigned short);
unsigned short (*v4) (signed char, signed short, signed int, unsigned short) = v3;
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned int v11 (unsigned short);
extern unsigned int (*v12) (unsigned short);
extern unsigned int v15 (signed short);
extern unsigned int (*v16) (signed short);
extern signed short v17 (signed short, signed int, unsigned int, unsigned char);
extern signed short (*v18) (signed short, signed int, unsigned int, unsigned char);
extern signed int v19 (signed int, unsigned int, signed int);
extern signed int (*v20) (signed int, unsigned int, signed int);
signed short v21 (unsigned short);
signed short (*v22) (unsigned short) = v21;
extern signed int v23 (unsigned char, unsigned int, signed short, unsigned short);
extern signed int (*v24) (unsigned char, unsigned int, signed short, unsigned short);
extern signed char v25 (unsigned char, unsigned char, signed short);
extern signed char (*v26) (unsigned char, unsigned char, signed short);
extern unsigned char v27 (unsigned short, unsigned int);
extern unsigned char (*v28) (unsigned short, unsigned int);
extern unsigned short v29 (unsigned char);
extern unsigned short (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 2U;
signed short v32 = -4;
unsigned int v31 = 7U;

signed short v21 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = 3;
unsigned int v36 = 4U;
signed int v35 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed char v38, signed short v39, signed int v40, unsigned short v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed char v44 = -3;
signed char v43 = -3;
unsigned short v42 = 7;
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
signed char v48;
v47 = 6 + 5;
v48 = v1 (v47);
history[history_index++] = (int)v48;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
