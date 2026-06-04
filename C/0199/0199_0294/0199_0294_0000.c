#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed char, signed int);
extern unsigned char (*v2) (signed char, signed int);
extern unsigned char v3 (signed char, unsigned int, signed short, signed int);
extern unsigned char (*v4) (signed char, unsigned int, signed short, signed int);
extern signed int v5 (unsigned char, unsigned short, signed char, signed int);
extern signed int (*v6) (unsigned char, unsigned short, signed char, signed int);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned int v9 (signed int);
extern unsigned int (*v10) (signed int);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
unsigned char v13 (unsigned char, signed int);
unsigned char (*v14) (unsigned char, signed int) = v13;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern void v17 (unsigned char, unsigned char, unsigned short, signed int);
extern void (*v18) (unsigned char, unsigned char, unsigned short, signed int);
extern signed char v19 (signed int, unsigned char, unsigned char, unsigned short);
extern signed char (*v20) (signed int, unsigned char, unsigned char, unsigned short);
extern unsigned char v21 (unsigned char, signed int, signed short);
extern unsigned char (*v22) (unsigned char, signed int, signed short);
signed char v23 (signed int, signed char, unsigned char);
signed char (*v24) (signed int, signed char, unsigned char) = v23;
extern signed char v25 (unsigned int, unsigned int);
extern signed char (*v26) (unsigned int, unsigned int);
extern signed int v27 (unsigned short, signed short);
extern signed int (*v28) (unsigned short, signed short);
extern signed char v29 (unsigned int);
extern signed char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -4;
unsigned short v32 = 1;
signed short v31 = 1;

signed char v23 (signed int v34, signed char v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 1;
signed short v38 = 2;
unsigned short v37 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned char v40, signed int v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = -3;
signed int v43 = -4;
unsigned short v42 = 1;
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
signed int v48;
unsigned char v49;
v47 = v33 + -1;
v48 = -2 + 2;
v49 = v1 (v47, v48);
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
