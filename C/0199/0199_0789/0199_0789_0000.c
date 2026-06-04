#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed int);
extern signed char (*v2) (signed int);
signed short v3 (void);
signed short (*v4) (void) = v3;
extern unsigned char v5 (unsigned short, unsigned char);
extern unsigned char (*v6) (unsigned short, unsigned char);
extern signed char v7 (signed char, unsigned int, unsigned short, unsigned int);
extern signed char (*v8) (signed char, unsigned int, unsigned short, unsigned int);
extern unsigned short v9 (unsigned char);
extern unsigned short (*v10) (unsigned char);
extern unsigned int v11 (signed int, unsigned short, signed char);
extern unsigned int (*v12) (signed int, unsigned short, signed char);
signed short v13 (void);
signed short (*v14) (void) = v13;
extern unsigned short v15 (signed short, unsigned char);
extern unsigned short (*v16) (signed short, unsigned char);
extern signed short v17 (signed char, signed int, unsigned int, unsigned int);
extern signed short (*v18) (signed char, signed int, unsigned int, unsigned int);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
signed short v25 (unsigned char, unsigned short, unsigned char, signed char);
signed short (*v26) (unsigned char, unsigned short, unsigned char, signed char) = v25;
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern void v29 (signed short, signed short, unsigned char, unsigned int);
extern void (*v30) (signed short, signed short, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -2;
signed char v32 = 1;
signed int v31 = -4;

signed short v25 (unsigned char v34, unsigned short v35, unsigned char v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -4;
unsigned int v39 = 2U;
signed char v38 = 3;
trace++;
switch (trace)
{
case 9: 
return -1;
default: abort ();
}
}
}
}

signed short v13 (void)
{
{
for (;;) {
signed short v43 = 3;
signed char v42 = 1;
signed int v41 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (void)
{
{
for (;;) {
unsigned short v46 = 7;
signed short v45 = -1;
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
signed int v49;
signed char v50;
v49 = 0 - v33;
v50 = v1 (v49);
history[history_index++] = (int)v50;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
