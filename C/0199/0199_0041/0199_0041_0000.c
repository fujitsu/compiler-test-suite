#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned char v3 (signed short, unsigned char, signed int, unsigned char);
extern unsigned char (*v4) (signed short, unsigned char, signed int, unsigned char);
extern void v5 (void);
extern void (*v6) (void);
unsigned char v7 (signed int);
unsigned char (*v8) (signed int) = v7;
extern signed char v9 (signed char, unsigned int, unsigned short);
extern signed char (*v10) (signed char, unsigned int, unsigned short);
extern unsigned short v11 (unsigned char);
extern unsigned short (*v12) (unsigned char);
extern signed char v13 (unsigned int, unsigned char, unsigned int, signed int);
extern signed char (*v14) (unsigned int, unsigned char, unsigned int, signed int);
extern signed short v15 (unsigned char, signed char, unsigned char, signed int);
extern signed short (*v16) (unsigned char, signed char, unsigned char, signed int);
signed char v17 (unsigned int);
signed char (*v18) (unsigned int) = v17;
extern signed short v19 (unsigned int, signed int, unsigned short, unsigned int);
extern signed short (*v20) (unsigned int, signed int, unsigned short, unsigned int);
extern void v21 (unsigned short, unsigned short);
extern void (*v22) (unsigned short, unsigned short);
unsigned char v23 (unsigned char, signed short, unsigned int);
unsigned char (*v24) (unsigned char, signed short, unsigned int) = v23;
extern signed char v25 (unsigned char, unsigned int);
extern signed char (*v26) (unsigned char, unsigned int);
extern unsigned short v29 (signed int, signed int);
extern unsigned short (*v30) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
signed int v32 = -4;
unsigned char v31 = 0;

unsigned char v23 (unsigned char v34, signed short v35, unsigned int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 1;
unsigned int v38 = 1U;
unsigned short v37 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (unsigned int v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
signed char v43 = -2;
signed int v42 = 1;
signed char v41 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed int v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
unsigned int v47 = 1U;
unsigned int v46 = 2U;
unsigned char v45 = 1;
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
unsigned short v50;
v50 = v1 ();
history[history_index++] = (int)v50;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
