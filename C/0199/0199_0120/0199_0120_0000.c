#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed short, signed char, signed char);
extern signed char (*v2) (signed short, signed char, signed char);
unsigned int v3 (unsigned short, signed char, unsigned int);
unsigned int (*v4) (unsigned short, signed char, unsigned int) = v3;
extern unsigned short v5 (signed short, signed short);
extern unsigned short (*v6) (signed short, signed short);
unsigned short v7 (unsigned short);
unsigned short (*v8) (unsigned short) = v7;
extern unsigned char v9 (signed int, signed char, signed short, signed short);
extern unsigned char (*v10) (signed int, signed char, signed short, signed short);
extern signed short v11 (signed short, signed int);
extern signed short (*v12) (signed short, signed int);
extern signed short v13 (signed int, signed int, unsigned short, signed short);
extern signed short (*v14) (signed int, signed int, unsigned short, signed short);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned char v17 (unsigned char, unsigned short, signed short);
extern unsigned char (*v18) (unsigned char, unsigned short, signed short);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned short v21 (signed char, unsigned char);
extern unsigned short (*v22) (signed char, unsigned char);
extern unsigned int v23 (signed int, signed int, signed int);
extern unsigned int (*v24) (signed int, signed int, signed int);
extern unsigned char v25 (unsigned short, unsigned int);
extern unsigned char (*v26) (unsigned short, unsigned int);
extern signed short v29 (unsigned short);
extern signed short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 2;
unsigned int v32 = 5U;
signed char v31 = 1;

unsigned short v7 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = -1;
unsigned char v36 = 0;
unsigned int v35 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned short v38, signed char v39, unsigned int v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned char v43 = 6;
unsigned short v42 = 2;
signed char v41 = 0;
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
signed short v46;
signed char v47;
signed char v48;
signed char v49;
v46 = 3 + 1;
v47 = -3 - -4;
v48 = v31 - 1;
v49 = v1 (v46, v47, v48);
history[history_index++] = (int)v49;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
