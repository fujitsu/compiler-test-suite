#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed char, signed short, unsigned short, signed char);
extern signed short (*v2) (signed char, signed short, unsigned short, signed char);
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
unsigned char v5 (signed int, signed char);
unsigned char (*v6) (signed int, signed char) = v5;
extern void v7 (signed int, unsigned int, unsigned int);
extern void (*v8) (signed int, unsigned int, unsigned int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern unsigned int v11 (unsigned int, signed short, signed int, unsigned char);
extern unsigned int (*v12) (unsigned int, signed short, signed int, unsigned char);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed short v15 (unsigned char, unsigned short, unsigned int);
extern signed short (*v16) (unsigned char, unsigned short, unsigned int);
extern unsigned int v17 (unsigned char, signed int, signed int);
extern unsigned int (*v18) (unsigned char, signed int, signed int);
extern void v19 (unsigned char, signed char, signed char, unsigned int);
extern void (*v20) (unsigned char, signed char, signed char, unsigned int);
signed int v21 (void);
signed int (*v22) (void) = v21;
extern unsigned int v23 (signed char, unsigned short, signed int, signed short);
extern unsigned int (*v24) (signed char, unsigned short, signed int, signed short);
extern signed short v25 (unsigned int, unsigned short);
extern signed short (*v26) (unsigned int, unsigned short);
extern void v27 (signed char);
extern void (*v28) (signed char);
unsigned char v29 (void);
unsigned char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 5;
unsigned char v32 = 6;
signed short v31 = -2;

unsigned char v29 (void)
{
{
for (;;) {
unsigned char v36 = 1;
unsigned int v35 = 6U;
unsigned short v34 = 5;
trace++;
switch (trace)
{
case 10: 
return 5;
default: abort ();
}
}
}
}

signed int v21 (void)
{
{
for (;;) {
signed char v39 = 2;
signed char v38 = -1;
unsigned int v37 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (signed int v40, signed char v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed int v44 = -2;
signed int v43 = 3;
unsigned char v42 = 6;
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
signed short v48;
unsigned short v49;
signed char v50;
signed short v51;
v47 = -1 - -4;
v48 = -4 + v31;
v49 = 6 + 4;
v50 = -2 - -1;
v51 = v1 (v47, v48, v49, v50);
history[history_index++] = (int)v51;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
