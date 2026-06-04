#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned int, signed int, signed short, unsigned int);
extern void (*v2) (unsigned int, signed int, signed short, unsigned int);
extern void v3 (signed short, signed int, unsigned char, unsigned char);
extern void (*v4) (signed short, signed int, unsigned char, unsigned char);
extern unsigned char v5 (unsigned int, unsigned int, unsigned int);
extern unsigned char (*v6) (unsigned int, unsigned int, unsigned int);
extern void v7 (unsigned short, signed short, unsigned int, unsigned int);
extern void (*v8) (unsigned short, signed short, unsigned int, unsigned int);
extern signed int v9 (unsigned int, unsigned short, unsigned short, signed short);
extern signed int (*v10) (unsigned int, unsigned short, unsigned short, signed short);
extern void v11 (signed char, signed int, signed char);
extern void (*v12) (signed char, signed int, signed char);
extern signed int v13 (signed char, unsigned char, unsigned int);
extern signed int (*v14) (signed char, unsigned char, unsigned int);
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
signed int v19 (signed char, signed int, signed int, unsigned short);
signed int (*v20) (signed char, signed int, signed int, unsigned short) = v19;
extern unsigned char v21 (unsigned char, unsigned int, signed char, signed short);
extern unsigned char (*v22) (unsigned char, unsigned int, signed char, signed short);
extern signed char v23 (unsigned char);
extern signed char (*v24) (unsigned char);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
signed int v27 (void);
signed int (*v28) (void) = v27;
extern unsigned char v29 (signed int);
extern unsigned char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
signed int v32 = 2;
unsigned int v31 = 3U;

signed int v27 (void)
{
{
for (;;) {
signed char v36 = 2;
signed short v35 = 2;
unsigned short v34 = 4;
trace++;
switch (trace)
{
case 11: 
return 0;
default: abort ();
}
}
}
}

signed int v19 (signed char v37, signed int v38, signed int v39, unsigned short v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed int v43 = -2;
signed int v42 = 3;
unsigned short v41 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
unsigned int v46 = 1U;
unsigned int v45 = 0U;
signed short v44 = 0;
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
unsigned int v49;
signed int v50;
signed short v51;
unsigned int v52;
v49 = v31 - 4U;
v50 = v33 - v33;
v51 = -2 - -4;
v52 = v31 + v31;
v1 (v49, v50, v51, v52);
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
