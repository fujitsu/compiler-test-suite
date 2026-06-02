#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
unsigned short v3 (void);
unsigned short (*v4) (void) = v3;
extern signed int v5 (signed short, signed char, signed char, signed short);
extern signed int (*v6) (signed short, signed char, signed char, signed short);
extern unsigned int v7 (unsigned int, signed short);
extern unsigned int (*v8) (unsigned int, signed short);
extern void v9 (unsigned int, unsigned short);
extern void (*v10) (unsigned int, unsigned short);
extern signed char v11 (unsigned int);
extern signed char (*v12) (unsigned int);
extern void v13 (unsigned char);
extern void (*v14) (unsigned char);
extern unsigned int v15 (unsigned int);
extern unsigned int (*v16) (unsigned int);
extern unsigned char v17 (unsigned char, signed int, signed char, signed char);
extern unsigned char (*v18) (unsigned char, signed int, signed char, signed char);
signed int v19 (signed char);
signed int (*v20) (signed char) = v19;
unsigned int v21 (unsigned char, signed int);
unsigned int (*v22) (unsigned char, signed int) = v21;
extern unsigned char v23 (signed char, signed short);
extern unsigned char (*v24) (signed char, signed short);
extern signed char v25 (unsigned int, signed char, signed char);
extern signed char (*v26) (unsigned int, signed char, signed char);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed char v29 (unsigned int, signed short, unsigned char, signed short);
extern signed char (*v30) (unsigned int, signed short, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
unsigned int v32 = 1U;
signed int v31 = 2;

unsigned int v21 (unsigned char v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 3U;
unsigned char v37 = 7;
signed short v36 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (signed char v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
unsigned int v42 = 2U;
signed char v41 = 1;
signed char v40 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (void)
{
{
for (;;) {
signed char v45 = -4;
unsigned char v44 = 6;
unsigned short v43 = 1;
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
unsigned short v48;
v48 = v1 ();
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
